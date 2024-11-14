 select two values from an array that sum to a given value 𝑝
p in linear time, you can use a hash table to store elements as you iterate through the array. Here’s how the algorithm works:

Algorithm Steps
Initialize an empty hash table (e.g., associative array).
Loop through each element in the array:
For each element num, calculate the complement target = p - num.
Check if target is already in the hash table:
If it is, then you’ve found the two numbers: num and target.
If target is not in the hash table, add num to the hash table and continue.
If a pair is found, return it. If not, then no such pair exists.

LINEAR TIME:
linear time refers to an algorithm whose execution time grows proportionally with the size of the input. 
If an algorithm runs in linear time, it means that if the input size doubles, the time required to run the algorithm will also roughly double.
