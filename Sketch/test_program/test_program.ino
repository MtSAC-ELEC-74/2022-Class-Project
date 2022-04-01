void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  while(!Serial); // Waits for serial port to open
  delay(500); // Give terminal window time to open.
  Serial.println("MtSAC ELEC74 Class Project Test Program");
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(500); // Give terminal window time to open.
  Serial.println("Nothing to see here");
}
