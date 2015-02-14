/* Sorts an input file by a numerical field in descending order.
 */
A = LOAD 'sortinput.txt' USING PigStorage AS (textfield:chararray,
sortfield:int);
B = ORDER A BY sortfield DESC;
STORE B INTO 'sortoutput';
