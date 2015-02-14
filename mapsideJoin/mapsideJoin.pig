/* Map-side join of two pre-sorted tables.
 */
A = LOAD 'file01' USING PigStorage AS (joinfield:chararray, datafield:chararray);
B = LOAD 'file02' USING PigStorage AS (joinfield:chararray, datafield:chararray);
C = JOIN A BY joinfield, B BY joinfield USING 'merge';
-- To do: make sure join field is not repeated in the output.
STORE C INTO 'joinoutput';
