/**
 * Example sketch modified by Jay Yu
 * Made for the Expressif ESP32-C3 with 2 colored LEDs
 * 
 * Set up board according to the integers R1-4 for one color and Y1-4 for the other color of the LED
 * Replace the username and password
 * The device will attmept to connect to the target network
 * Once connected, browse to the IP address printed in serial monitor on a device connected to the same network
 * There will be controls to toggle light and switch colors, as well as a link to turn off all lights
 * This sketch works by listening to HTML requests and switching the lights accordingly
 * 
 * NOTES:
 *  ESP-C3 can only connect to 2.4GHz networks
 *  For example, to connect to hotspot iPhone you must enable Maximize Compatibility
 */

/*
  WiFi Web Server LED Blink

  A simple web server that lets you blink an LED via the web.
  This sketch will print the IP address of your WiFi Shield (once connected)
  to the Serial monitor. From there, you can open that address in a web browser
  to turn on and off the LED on pin 5.

  If the IP address of your shield is yourAddress:
  http://yourAddress/H turns the LED on
  http://yourAddress/L turns it off

  This example is written for a network using WPA encryption. For
  WEP or WPA, change the Wifi.begin() call accordingly.

  Circuit:
   WiFi shield attached
   LED attached to pin 5

  created for arduino 25 Nov 2012
  by Tom Igoe

  ported for sparkfun esp32
  31.01.2017 by Jan Hendrik Berlin

*/

#include <WiFi.h>

const char* ssid     = "WiFi SSID";
const char* password = "WiFi Password";

int R1 = 5;
int R2 = 6;
int R3 = 7;
int R4 = 8;
int Y1 = 19;
int Y2 = 18;
int Y3 = 2;
int Y4 = 3;

WiFiServer server(80);

void setup()
{
  Serial.begin(115200);
  pinMode(R1, OUTPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, OUTPUT);
  pinMode(R4, OUTPUT);
  pinMode(Y1, OUTPUT);
  pinMode(Y2, OUTPUT);
  pinMode(Y3, OUTPUT);
  pinMode(Y4, OUTPUT);

  delay(10);

  // We start by connecting to a WiFi network

  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected.");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  server.begin();

}

int value = 0;

void loop() {
  WiFiClient client = server.available();   // listen for incoming clients

  if (client) {                             // if you get a client,
    Serial.println("New Client.");           // print a message out the serial port
    String currentLine = "";                // make a String to hold incoming data from the client
    while (client.connected()) {            // loop while the client's connected
      if (client.available()) {             // if there's bytes to read from the client,
        char c = client.read();             // read a byte, then
        Serial.write(c);                    // print it out the serial monitor
        if (c == '\n') {                    // if the byte is a newline character

          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
            // and a content-type so the client knows what's coming, then a blank line:
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println();

            // the content of the HTTP response follows the header:
            client.print("LED 1 <a href=\"/R1\">RED</a> <a href=\"/Y1\">YLW</a> <a href=\"/O1\">OFF</a> <br>");
            client.print("LED 2 <a href=\"/R2\">RED</a> <a href=\"/Y2\">YLW</a> <a href=\"/O2\">OFF</a> <br>");
            client.print("LED 3 <a href=\"/R3\">RED</a> <a href=\"/Y3\">YLW</a> <a href=\"/O3\">OFF</a> <br>");
            client.print("LED 4 <a href=\"/R4\">RED</a> <a href=\"/Y4\">YLW</a> <a href=\"/O4\">OFF</a> <br>");
            client.print("MASTER <a href=\"/OFF\">ALL OFF</a> <br>");

            // The HTTP response ends with another blank line:
            client.println();
            // break out of the while loop:
            break;
          } else {    // if you got a newline, then clear currentLine:
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }
        // Check to see if the client request was "GET /H" or "GET /L":
        if (currentLine.endsWith("GET /R1")) swap(R1, Y1);
        if (currentLine.endsWith("GET /Y1")) swap(Y1, R1);
        if (currentLine.endsWith("GET /O1")) off(R1, Y1);
        if (currentLine.endsWith("GET /R2")) swap(R2, Y2);
        if (currentLine.endsWith("GET /Y2")) swap(Y2, R2);
        if (currentLine.endsWith("GET /O2")) off(R2, Y2);
        if (currentLine.endsWith("GET /R3")) swap(R3, Y3);
        if (currentLine.endsWith("GET /Y3")) swap(Y3, R3);
        if (currentLine.endsWith("GET /O3")) off(R3, Y3);
        if (currentLine.endsWith("GET /R4")) swap(R4, Y4);
        if (currentLine.endsWith("GET /Y4")) swap(Y4, R4);
        if (currentLine.endsWith("GET /O4")) off(R4, Y4);
        if (currentLine.endsWith("GET /OFF")) {
          off(R1, Y1);
          off(R2, Y2);
          off(R3, Y3);
          off(R4, Y4);
        }
      }
    }
    // close the connection:
    client.stop();
    Serial.println("Client Disconnected.");
  }
}
void swap(int onPin, int offPin) {
  digitalWrite(offPin, LOW);
  digitalWrite(onPin, HIGH);
}
void off(int pin1, int pin2) {
  digitalWrite(pin1, LOW);
  digitalWrite(pin2, LOW);
}
