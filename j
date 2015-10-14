You are this week's on-call engineer for the web servers managed by your team. One morning (it's still dark outside), you are awakened by a call that one of your services has gone down. You immediately log into the web management portal and download a memory dump of the process that crashed. Unfortunately, the bug that caused the crash has also garbled the memory dump. All of the values in memory have been converted into other numerical bases in the range of [2,36]: some are hexadecimal; some are binary; and some may not even appear on this lengthy list of named bases. Now, you must decipher them using a little radix conversion magic.

Input description/format

An input file for this problem will contain an arbitrary number of lines.

Each line will contain three parts, separated by commas. The first part is a value from the memory dump. The second part is a decimal integer which represents the radix of the memory value. The third part is a decimal integer representing another radix. You must convert each memory value from the first radix into the second radix.

Beware: some inputs will be invalid. Valid radixes will be in the range [2, 36]. Valid memory dump values will contain only lower-case alphanumeric characters, and their decimal representations will fit in a 32-bit signed integer.

Output description/format

An output file for this problem should contain the same number of lines as the input file.

On each line, print the corresponding memory value expressed in the given radix. The output string should contain only lower-case alphanumeric characters. If the input is invalid or the conversion is impossible, print "Invalid Input" on the line.

Example input

beef,16,10
10110010,2,16
2343001,8,17
Example output

48879
b2
7b654


Given a 3-tuple of side lengths, it is known that one can form a triangle if the sum of any two sides is greater than the remaining side. Given a list of 4-tuples of side lengths, determine if one can form a non-degenerate convex quadrilateral (a strictly four sided figure with no internal angles greater than or equal to 180 degrees).

Input description/format

The first line contains a positive integer indicating the number (N) of lines to read after the first. Each line after the first contains 4 positive integers separated by single spaces, representing the 4 side lengths.

Output description/format

The output should contain N lines. Each line should contain either the string "Possible", or "Impossible". The line should say "Possible" if one can form a non-degenerate convex quadrilateral from the 4 given side lengths. Otherwise, it should say "Impossible".

Example input

8
26 3 13 9
22 39 3 21
34 38 35 7
14 7 10 19
26 36 20 15
33 16 14 11
1 25 26 31
10 27 5 7
Example output

Impossible
Possible
Possible
Possible
Possible
Possible
Possible
Impossible
