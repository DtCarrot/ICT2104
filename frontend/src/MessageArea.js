import React, { useEffect, useState } from "react";
import MQTT from "paho-mqtt";
import Button from "@material-ui/core/Button";

const client = new MQTT.Client("tailor.cloudmqtt.com", 37072, "223");
const MessageArea = () => {
  const [lastHeartbeat, setLastHeartbeat] = useState(null);
  const [ultrasonicDistance, setUltrasonicDistance] = useState(null);
  const [alert, setAlert] = useState(false);
  useEffect(() => {
    // called when the client loses its connection
    const onConnectionLost = responseObject => {
      if (responseObject.errorCode !== 0) {
        console.log("onConnectionLost:" + responseObject.errorMessage);
      }
    };

    // called when a message arrives
    const onMessageArrived = ({ payloadString }) => {
      console.log("Message: ", payloadString);
      switch (payloadString) {
        case "HEARTBEAT":
          console.log(new Date());
          const currDate = new Date();
          const splitString = currDate.toString().split(" ")[4];
          setLastHeartbeat(splitString);
          return;
      }
      const command = payloadString.substring(0, 4);
      if (command === "SR04") {
        console.log("Ultrasonic");
        const distance = payloadString.substring(4, payloadString.length);
        setUltrasonicDistance(distance);
      }
      if (command === "SC01") {
        setAlert(true);
      }
      if (command === "SC02") {
        setAlert(false);
      }
    };

    // set callback handlers
    client.onConnectionLost = onConnectionLost;
    client.onMessageArrived = onMessageArrived;
    const onConnect = () => {
      console.log("Connected");
      client.subscribe("command");
      client.subscribe("telemetry");
    };
    const doFail = res => {
      console.log("Failed to connect", res);
    };
    var options = {
      useSSL: true,
      userName: "zrxlhoid",
      password: "Bv7DAHDDEwVu",
      onSuccess: onConnect,
      onFailure: doFail
    };

    // connect the client
    client.connect(options);
  }, []);
  const sendMessage = msg => {
    console.log("SEND MESSAGE");
    client.publish("command", msg);
  };
  return (
    <div>
      {alert && (
        <p style={{ color: "#fff", padding: 10, backgroundColor: "#ff6666" }}>
          People Detection!
        </p>
      )}

      <p>Last heartbeat time: {lastHeartbeat}</p>
      {ultrasonicDistance !== null && (
        <p>Ultrasonic Distance: {ultrasonicDistance}cm </p>
      )}
      {ultrasonicDistance === null && <p>Ultrasonic Distance: NA</p>}
      <React.Fragment>
        <div>
          <Button
            variant="contained"
            color="secondary"
            onClick={() => sendMessage("RST1")}
          >
            Reset
          </Button>

          <Button
            variant="contained"
            color="secondary"
            style={{ marginLeft: 15 }}
            onClick={() => sendMessage("ALT1")}
          >
            Alert
          </Button>
        </div>
        <div style={{ marginTop: 15 }}>
          <Button
            variant="contained"
            color="secondary"
            onClick={() => sendMessage("CAMQ")}
          >
            Change Image Quality
          </Button>
          <Button
            variant="contained"
            color="secondary"
            style={{ marginLeft: 15 }}
            onClick={() => sendMessage("CHT1")}
          >
            Change Tone
          </Button>
        </div>
      </React.Fragment>
    </div>
  );
};

export default MessageArea;
