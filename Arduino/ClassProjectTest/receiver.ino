uint8_t receive_function(char* buff, uint8_t sizevar) 
{ 
  static uint8_t ctr = 0;     // store the current position in the buff array 
  uint8_t ch;                 // store the last character received 
  if (Serial.available() > 0) // true when characters in serial input buffer 
  { 
    ch = Serial.read();       // store character from buffer in ch 
    if( ctr < sizevar) {      // if the ctr is less than your buffer yet 
      buff[ctr++] = ch;       // add it to your buffer 
    } 
    if (ch == '\r')           // if that character is a carriage return 
    { 
      buff[ctr-1] = 0;        // replace '\r' with '\0' (string termination) 
      ctr = 0;                // reset the pointer 
      Serial.print("Command: "); // print a string and stay on the same line 
      Serial.println(buff); // print received followed by a new line 
      return 1; 
    } 
    else 
      return 0; 
  }                           //end serial was available 
  return 0; 
} 
