const express = require("express");
const http = require("http");
const cors = require("cors");
const Stream = require("stream").Transform;
const server = express();
const multer = require("multer");
const storage = multer.memoryStorage();
const fs = require("fs");
// Put this statement near the top of your module
var bodyParser = require("body-parser");
// Put these statements before you define any routes.

const upload = multer({ storage: storage });
const IncomingForm = require("formidable").IncomingForm;
const socketIo = require("socket.io");

server.use(function(req, res, next) {
  var contentType = req.headers["content-type"] || "",
    mime = contentType.split(";")[0];

  console.log("Content type: ", contentType);

  if (mime != "image/jpg") {
    return next();
  }

  const data_stream = new Stream();
  req.on("data", function(chunk) {
    data_stream.push(chunk);
    // req.rawBody = data_stream.read();
  });
  req.on("end", function() {
    console.log("On end: ");
    req.rawBody = data_stream.read();
    next();
  });
  req.on("error", () => {
    console.log("Error in reading data");
  });
  req.on("success", () => {
    console.log("Success!");
  });
});

var corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200
};

const socketServer = http.createServer(server);
const io = socketIo(socketServer);
let currentSocket = null;
io.on("connect", socket => {
  console.log("User connected");
  currentSocket = socket;
  // console.log("Socket info: ", socket);
});
io.listen(8888);

// Method that will be called when an image have been send from ESP32-CAM
const uploadImage = (req, res) => {
  // Convert raw image body to utf8 format
  const buffer = Buffer.from(req.rawBody, "utf8").toString("base64");

  // Write temporary image buffer
  // fs.readFile("./image.jpg", buffer, err => console.log(err));
  // const fileData = fs.readFileSync("./image-test.jpeg");
  // const buffer = Buffer.from(fileData).toString("base64");
  // io.sockets.emit("test");
  // Send base64 image data
  // io.sockets.emit("broadcast", buffer);
  if (currentSocket !== null) {
    console.log("Sending image");
    currentSocket.emit("broadcast", buffer);
  } else {
    console.log("Socket null");
  }
  console.log("Done emit");
  // io.sockets.emit("broadcast", buffer);
  res.send(200);
};

server.unsubscribe(cors(corsOptions));

/*
 * /upload HTTP POST request
 *
 */
server.post("/upload", uploadImage);

server.listen(8000, () => {
  console.log("Server started!");
});
