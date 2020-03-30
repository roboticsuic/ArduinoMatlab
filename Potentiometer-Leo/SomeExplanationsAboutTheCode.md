**# Potemtiometer_Leo**

**General explanation:**
In this practice we will learn to read the analog input on the arduino board. To do this we will use a potentiometer as an analog input source.

We will connect the VCC pin to the Arduino board on the VCC input (+5V), the Vout pin to the analog input A2 on the Arduino board and the GND pin to the GND input.

![Potentiometer-Scheme](https://github.com/roboticsuic/ArduinoMatlab/blob/master/Potentiometer-Leo/Schemes/Potentiometer.PNG)

**Objective** --> Learn how to read the analog input on the arduino board.

**Scheme**

![Scheme](https://github.com/roboticsuic/ArduinoMatlab/blob/master/Potentiometer-Leo/Schemes/SchemeTinkerCad.PNG)

**Code explanations:** #You can find it in the folder code

1.**cleanupObj** = onCleanup(cleanupFun) creates an object that, when destroyed, executes the cleanupFun function. MATLAB® implicitly deletes all local variables at the end of a function, either by normal termination, or by forced output, such as an error, or Ctrl+C.

2.**Digits** --> **s = num2str(A,precision)** returns a character matrix representing the numbers with the maximum number of significant digits specified for precision.

3.**Loop** 

-->**while 1** is the same as while true , It means that the will run until stopped by the user or by a mistake. 

-->**while 0** is equivalent to while false , it means that the loop will never execute.
