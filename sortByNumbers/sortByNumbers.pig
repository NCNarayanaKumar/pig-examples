A = LOAD 'sortinput.txt' USING PigStorage AS (textfield:chararray,
sortfield:int);
B = ORDER A BY sortfield DESC;
STORE B INTO 'sortoutput.txt';
