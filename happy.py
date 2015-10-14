__author__ = 'yusaira-khan'




def find_happiness(num):
    seq=[num]
    if num == 1:
        print 'happy 0'
    while True:
        next = get_square(num)
        if next == 1:
            print 'happy', len(seq)
            print seq
            return
        if next in seq:
            print 'unhappy', len(seq)
            print seq
            return
        seq.append(next)
        num = next

def get_square(num):
    units=[]
    while num !=0:
        units.append(num%10)
        num = num/10
    return reduce(lambda prev,x: prev+x*x,units,0)

file=open('Happy-numbers_InputForSubmission_1.txt','r')

m=file.read().split('\n')
while True:
    try:
        m.remove('')
    except:
        break
nums=[int(i)for i in m]

for i in nums:
    find_happiness(i)