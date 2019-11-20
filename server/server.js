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
// server.use(
//   bodyParser.raw({
//     inflate: true,
//     limit: "400kb",
//     type: "image/jpg"
//   })
// );
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

  var data = "";
  const data_stream = new Stream();
  req.on("data", function(chunk) {
    data += chunk;
    data_stream.push(chunk);
  });
  req.on("end", function() {
    console.log("On end: ");
    fs.writeFileSync("image-test.jpeg", data_stream.read(), {
      encoding: "utf8",
      mode: 777
    });
    req.rawBody = data;
    next();
  });
});

var corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200
};

const socketServer = http.createServer(server);
const io = socketIo(socketServer);
io.on("connect", socket => {
  console.log("Socket info: ", socket);
});
io.listen(8888);

const uploadImage = req => {
  // console.log("Called");
  // console.log(req.rawBody);
  const buffer = Buffer.from(req.rawBody, "utf8");
  // const buffer = new Buffer(req.rawBody).toString("base64");
  // let imgSrcString = `data:image/jpeg;base64,${buffer}`;
  // console.log(imgSrcString);
  fs.writeFileSync("./image.jpg", buffer, err => console.log(err));
  console.log("Completed");
  // console.log(req.body);
  // console.log(req.file);
  // const form = new IncomingForm();
  // form.on("file", (field, file) => {
  //   console.log(field, file);
  // });
  // form.parse(req, (err, fields, files) => {
  //   io.sockets.emit("broadcast", "test");
  //   console.log(err, fields, files);
  // });
};

server.unsubscribe(cors(corsOptions));

// server.post("/upload", upload.single("namewee"), uploadImage);
server.post("/upload", uploadImage);

server.listen(8000, () => {
  console.log("Server started!");
});
