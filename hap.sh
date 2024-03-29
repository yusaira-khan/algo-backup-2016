Take any positive number, such as 28. The sum of the squares of its digits is 22 + 82 = 68. If we continue this process, we get the following sequence:

28, 68, 100, 1.

Since the sequence ends in 1, 28 is a happy number.

However, not all numbers are happy. For example, 45 is not a happy number, or is an unhappy number, since it produces the following sequence:

45, 41, 17, 50, 25, 29, 85, 89, 145, 42, 20, 4, 16, 37, 58, 89, ...

at which point the sequence has started to repeat. The process never results in a 1.

For this problem, we will determine if a number is happy or unhappy, and the degree to which it is happy or unhappy.

Input description/format

The input to your solution will be a list of ten positive integers, one on each line. The smallest possible integer is 1; the largest possible integer is 500,000.

Output description/format

The output from your solution should be one line per number. Each line should have one word and one number, in that order, separated by one whitespace character.

If the input integer for the line is happy (as defined above), the word happy should be followed by the number of integers in the sequence before a 1 is seen.

If the number is unhappy, the word unhappy should be followed by the number of integers in the sequence before the sequence starts to repeat.

The output should end with an empty line.

Example input

28
45
1
314159
100
25
4
500000
888
27182
Example output

happy 3
unhappy 15
happy 0
happy 6
happy 1
unhappy 11
unhappy 8
unhappy 12
happy 4
unhappy 14
© 2015 Microsoft
