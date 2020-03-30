function [] = potentiometer()
arduino_board = arduino();
finishup = onCleanup(@() exitprogram(arduino_board));
disp('press Ctr-C to exit');
    while true
        analog = readVoltage(arduino_board,'A2');
        disp(['potentiometer analog value= ',num2str(analog,2)]);
        pause(2);
    end
end
function exitprogram(b)
clear b;
disp('the program has been finished');
end