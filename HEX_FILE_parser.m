clc
close all;
clear all;
%% read hex file
fid = fopen('application_program.hex');
Hex_code   = fread(fid, Inf, 'uint8');
%% Separate data 
Reshape_HEX   = reshape(Hex_code,45,214);
Data   = Reshape_HEX(10:41,:);
fclose(fid);
%% Make Output
fid = fopen('example.txt', 'w');
fprintf(fid, '0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,\n', Data);