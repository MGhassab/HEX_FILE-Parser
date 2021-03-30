clc
close all;
clear all;
%%
fid = fopen('internal_flash_test.hex');
A   = fread(fid, Inf, 'uint8');
B   = reshape(A,45,227);
C   = B(10:41,:);
fclose(fid);
fid = fopen('example.txt', 'w');
% fprintf(fid, '%c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c %c \r\n', C);
fprintf(fid, '0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,0x%c%c,\n', C);