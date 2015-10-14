__author__ = 'yusaira-khan'
import re

file=open('Matrix-multiplication_InputForSubmission_2.txt','r')
matrix=file.read()

matrix_lines = matrix.split('\n')
first_line=matrix_lines[0]
num_matrices = first_line.count('|')/2
matrix_starts = [0]
matrix_ends=[len(first_line) -1]
for i in range(num_matrices-1):
    last_start = matrix_starts[-1]
    end = first_line.find('|',last_start + 1)
    matrix_ends.insert(i,end)
    matrix_starts.append(end + 2)

all_matrix=[[] for i in range(num_matrices)]
any_numbers=re.compile('\d*')
for line_number in matrix_lines:
    for i in range(num_matrices):
        num_string = line_number[matrix_starts[i]+1:matrix_ends[i]]

        row = num_string.strip().split(' ')
        if row==['']:
            continue
        try:
            while True:
                row.remove('')
        except:
            pass
        try:
            row.remove('|')
        except:
            pass
        #else

        all_matrix[i].append([int(num) for num in row])


def multiply(first,second):
    result = [[0 for i in second[0]] for j in first]
    for i in range(len(first)):
    # iterate through columns of Y
        for j in range(len(second[0])):
            # iterate through rows of Y
            for k in range(len(second)):
                result[i][j] += first[i][k] * second[k][j]
    return result

while len(all_matrix) != 1:
    second = all_matrix.pop()
    first = all_matrix.pop()
    result = multiply(first,second)
    all_matrix.append(result)

m= all_matrix[0]
widths=[0 for i in m[0]]
for row in m:
    for i,cell in enumerate(row):
        if len(str(cell))> widths[i]:
            widths[i]=len(str(cell))
for row in m :
    line= '| '
    for i,num in enumerate(row):
            for j in range(widths[i]-len(str(num))):
                line+=' '
            line+= str(num)+' '
    line+= '|'
    print line


