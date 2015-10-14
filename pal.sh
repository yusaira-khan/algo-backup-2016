A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. An anagram is the result of rearranging the letters of a word or phrase to produce a new word or phrase, using all of the original letters exactly once.

This problem is a combination of both. You will be given a string and your program needs to check whether or not any of its anagrams contain a palindrome. If none of the anagrams is a palindrome, then you need to find the minimum number of characters to eliminate from the string in order for at least one of its anagrams to be a palindrome. In addition, your program needs to figure out the number of anagrams that are palindromes.

Consider this example: You are given the string "aabd". None of the anagrams of this string are palindrome. If you remove the letter "d", however, then "aba" is an anagram of the string that is a palindrome; if you remove the letter "b", then "ada" is an anagram that is a palindrome. In either case, there is only one anagram that is a palindrome.

Input description/format

The input file will contain multiple lines. Each line will have a string of lowercase alphabetic characters ('a'-'z'). The length of the string will vary from 1 to 20.

Output description/format

The output file should contain exactly the same number of lines as the input. Each line of the output should be of the following format: X,Y where X is the minimum number of characters you need to remove from the original string for any of its anagrams to be a palindrome and Y is the total number of anagrams that are palindromic after you remove X characters. Permutations of the same letter within a palindrome do not count; in particular, 'aaa' is 1 palindrome, not 6.

Example input

aba
acad
agabgb
agqagdt
Example output

0,1
1,1
0,6
2,2
