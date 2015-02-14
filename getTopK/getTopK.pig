/* Gets the top k records from an input file, ordered by a column (of type integer).
 */
A = LOAD 'topkinput.txt' USING PigStorage AS (textfield:chararray, sortfield:int);
B = ORDER A BY sortfield DESC;
C = LIMIT B 3; -- this does the right thing by pushing the limit into the mappers.
STORE C INTO 'topkoutput';
