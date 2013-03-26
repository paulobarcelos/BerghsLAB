int number = 10;

// A program can also have functions...

// A function like a variable, but instead of storing a simple
// value, it stores a piece of code, that you can run at any time.

void doubleNumber(){
  number = number * 2;
}

// The above function doubles the value of "number" everytime it runs.

// Every Processing program should have at least 2 functions:
// "setup" and "draw"
// They are special functions will be called automatically for you.

void setup(){
  // Everything here gets executed only once!
  // In the beggining of the program...
  
  doubleNumber(); // now number is 20!
}

void draw(){
  // Everything in here get executed...
  // ...forever...
  //           ...and ever...
  //                      ...and ever!
  
  
  // This function runs on every "frame" until your program is quit.
  
  doubleNumber(); // number is growing exponetially!
}
