function [] = servo_motor()  % Definimos el nombre de la funci�n
board = arduino();  % Seleccionamos un nombre para la arduino board
finishup = onCleanup(@() exitprogram(board));
motor = servo(board,'D10');  % Establecemos el servo motor
disp('press Ctr-C to exit');
while 1  %Empezamos un loop
for pos = 0:0.25:1  % Determinamos que vaya de la posici�n 0 (0 grados) a 1 (180 grados) en ...
...4 movimientos
disp(['position: ',num2str(pos)]); % En la pantalla mostramos la posicion
writePosition(motor,pos); % Enviamos al motor la informaci�n de la posici�n
pause(1);
end
for pos = 1:-0.25:0 % Determinamos la posici�n, pero esta vez a la inversa, de 180 a 0
disp(['position: ',num2str(pos)]);
writePosition(motor,pos);
pause(1);
end
end
end
function exitprogram(b) % Determinamos la funci�n para terminar el programa
clear b;
disp('program has exit');
end