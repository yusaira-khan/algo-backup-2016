#!/usr/bin/env bash
Computer graphics, artificial intelligence, and robotics, along with many other applications, rely very heavily on the ability to multiply matrices together. The modern computer game completes millions of matrix multiplications per second. While normally done in hardware, it is important for the game developer to have a deep understanding of how these multiplications work. For this problem, assume the role of a game developer looking to verify some graphics transformations and implement a matrix multiplier.

Input description/format

The input will be a series of at least two matrices that need to be multiplied together. The Matrices will be bounded on the left and right by | characters and individual entries will be separated by at least one space character. To make things easier, we will stick with integer values (positive and negative).

For example, a 3x3 identity matrix would be represented as follows:

| 1 0 0 |
| 0 1 0 |
| 0 0 1 |
The multiplication of a 3x3 matrix with a 3x1 column vector matrix would be represented as:

| 1 0 0 | | 2 |
| 0 1 0 | | 4 |
| 0 0 1 | | 6 |
The | marking the start and end of a matrix will always line up in the input. Thus, a 2x3 matrix multiplied by a 3x2 matrix would be represented as:

| 1  2  3  | | -1 -2 |
| 11 12 13 | | 10 11 |
             | -9 -8 |
Remember that more than two matrices may be specified in the input.

Output description/format

The output from the problem should be a matrix formatted in the same manner as the input matrices.

The left and right most character should be a | and all columns should be right aligned. The individual number entries should be separated by at least one space from the | character as well as any other number entry (where the exact number is determinded by column alignment). Negative numbers will be immediately preceeded by a - character.

For example, an output could be as follows:

| 1  -2 30 |
| 2 508  7 |
| 3  15 -5 |
| 0   0 18 |
Remember, the whitespace within each line must be exact to receive credit. Please ensure you have validated your solution against all practice input provided.

Example input

| 1 2 3 | |  7  8 |
| 4 5 6 | |  9 10 |
          | 11 12 |
Example output

|  58  64 |
| 139 154 |
