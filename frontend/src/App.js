import React, { useState, useRef, useEffect, Fragment } from "react";
import * as faceapi from "face-api.js";
import socketIOClient from "socket.io-client";
import logo from "./logo.svg";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import IconButton from "@material-ui/core/IconButton";

import "./App.css";
import MessageArea from "./MessageArea";
// public method for encoding an Uint8Array to base64
function encode(input) {
  var keyStr =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
  var output = "";
  var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
  var i = 0;

  while (i < input.length) {
    chr1 = input[i++];
    chr2 = i < input.length ? input[i++] : Number.NaN; // Not sure if the index
    chr3 = i < input.length ? input[i++] : Number.NaN; // checks are needed here

    enc1 = chr1 >> 2;
    enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
    enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
    enc4 = chr3 & 63;

    if (isNaN(chr2)) {
      enc3 = enc4 = 64;
    } else if (isNaN(chr3)) {
      enc4 = 64;
    }
    output +=
      keyStr.charAt(enc1) +
      keyStr.charAt(enc2) +
      keyStr.charAt(enc3) +
      keyStr.charAt(enc4);
  }
  return output;
}

function _arrayBufferToBase64(buffer) {
  var binary = "";
  var bytes = new Uint8Array(buffer);
  var len = bytes.byteLength;
  for (var i = 0; i < len; i++) {
    binary += String.fromCharCode(bytes[i]);
  }
  return window.btoa(binary);
}

let net = null;
const init = async () => {
  await faceapi.loadSsdMobilenetv1Model("/models");
};
init();

const boxWidth = 400;
const boxHeight = 300;

function App() {
  const [dims, setDims] = useState(null);
  const canvasRef = useRef(null);
  const wrapperRef = useRef(null);
  const imageRef = useRef(null);
  useEffect(() => {
    const socket = socketIOClient("http://127.0.0.1:8888");
    // socket.binaryType = "arraybuffer";
    socket.on("connection", () => console.log("Connected"));
    socket.on("message", msg => console.log("Msg: ", msg));
    socket.on("broadcast", async msg => {
      // console.log("Msg: ", msg);
      // console.log("Encoded: ", _arrayBufferToBase64(msg));
      imageRef.current.src = "data:image/jpg;charset=utf-8;base64," + msg;
      // console.log(net);
      const detection = await faceapi.detectAllFaces(imageRef.current);
      console.log("Detection: ", detection);
      const ctx = canvasRef.current.getContext("2d");
      ctx.clearRect(0, 0, canvasRef.current.width, canvasRef.current.height);
      const {
        clientWidth: dimsWidth,
        clientHeight: dimsHeight
      } = wrapperRef.current;
      detection.forEach(obj => {
        let {
          _box: { _width: width, _height: height, _x: x1, _y: y1 }
        } = obj;
        const {
          _imageDims: { _width: imageWidth, _height: imageHeight }
        } = obj;
        const { score } = obj;
        const ratio = boxWidth / imageWidth;
        console.log("Ratio: ", ratio);
        x1 *= ratio;
        y1 *= ratio;
        width *= ratio;
        height *= ratio;
        x1 = parseInt(x1);
        y1 = parseInt(y1);
        width = parseInt(width);
        height = parseInt(height);
        ctx.strokeStyle = "red";
        console.log(x1, y1, width, height);
        ctx.strokeRect(x1, y1, width, height);
      });
    });
    socket.on("disconnect", err => console.log("Disconnected: ", err));
    socket.on("error", err => console.log("Error: ", err));
  }, []);
  useEffect(() => {
    const { width, height } = imageRef.current;
    console.log(imageRef.current);
    setDims({
      width: boxWidth,
      height: boxHeight
    });
    canvasRef.current.setAttribute("width", `${boxWidth}px`);
    canvasRef.current.setAttribute("height", `${boxHeight}px`);
  }, [imageRef.current]);
  let canvasStyle = {
    zIndex: 99,
    position: "absolute"
  };
  if (dims !== null) {
    console.log("Dims: ", dims);
    canvasStyle = {
      ...canvasStyle,
      ...dims
    };
  }
  return (
    <Fragment>
      <AppBar position="static">
        <Toolbar>
          <Typography variant="h6">Metrol</Typography>
        </Toolbar>
      </AppBar>

      <div
        ref={wrapperRef}
        style={{
          margin: "0 auto",
          width: 400,
          marginTop: 50,
          position: "relative"
        }}
      >
        <h1>Camera View</h1>
      </div>
      <div
        ref={wrapperRef}
        style={{
          margin: "0 auto",
          width: 400,
          height: 300,
          marginTop: 50,
          position: "relative"
        }}
      >
        <canvas style={canvasStyle} ref={canvasRef} />
        <img style={{ width: 400, height: 300 }} ref={imageRef} alt="logo" />
      </div>
      <div
        ref={wrapperRef}
        style={{
          margin: "0 auto",
          width: 400,
          height: 300,
          marginTop: 20,
          position: "relative"
        }}
      >
        <MessageArea />
      </div>
    </Fragment>
  );
}

export default App;
