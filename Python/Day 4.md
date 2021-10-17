
!wget http://www.py4inf.com/code/mbox-short.txt

!cat mbox-short.txt

!dir > mbox-short.txt
!type mbox-short.txt

handle = open ('mbox-short.txt')

handle.readline()

handle.close()

print("Hello\nPython")

fhandle = open('mbox-short.txt')
for line in fhandle:
    print(line)
fhandle.close()


fhandle = open('mbox-short.txt')
count = 0
for line in fhandle:
    count += 1
print("Count of lines: ", count)
fhandle.close()

fhandle = open('mbox-short.txt')
ftxt = fhandle.read()
print(ftxt)
fhandle.close()

print(ftxt.split("\n")[-20])

fhandle = open('mbox-short.txt')
for line in fhandle:
    if (line.startswith('From')) :
        print(line.strip())
fhandle.close()

fhandle = open('mbox-short.txt')
for line in fhandle:
    line = line.rstrip()
    if not line.startswith('From:') :
        continue
    print(line.strip())
fhandle.close()


fhandle = open('mbox-short.txt')
for line in fhandle:
    line = line.rstrip()
    if not 'uct.ac.za' in line :
        continue
    print(line)
fhandle.close()


fname = input('Enter the file name: ')
fhandle = open(fname)
count = 0
for line in fhandle:
    if (line.startswith('Subject:')) :
        count += 1
print('There were', count, 'Subject lines in ', fname)
fhandle.close()


fname = input('Enter the file name: ')
try:
    fhandle = open(fname)
except:
    print('File can not be opened', fname)
    exit()
    
count = 0
for line in fhandle:
    if (line.startswith('Subject:')) :
        count += 1
print('There were', count, 'Subject lines in ', fname)
fhandle.close()


# fhandle = open('mbox-short.txt')
# fhandle.close()
with open('mbox-short.txt') as fhandle:
    for line in fhandle:
        if line.startswith('From:') :
            print(line.strip())


with open('mbox-short-created-by-sathya.txt', 'w+') as fhandle:
    fhandle.write('Hello')
    fhandle.write('Python')


!type mbox-short-created-by-sathya.txt

with open('mbox-short-created-by-sathya.txt', 'a+') as fhandle:
    fhandle.write('\n Hello \n')
    fhandle.write('Python')


!type mbox-short-created-by-sathya.txt

## File modes
## w+b

l = [1, 'text', 1.0]


names = ['SN', 'DSP', 'SSP']
for name in names:
    print('Welcome ', name, 'to Python programming')
print('----')


print(names[1])

name = 'Sathya'
name[0]
name[1]
len(name)

for i in range(5,9):
    print(i)

print(len(names))


print(range(len(names)))


'D' in names

'DSP' in names


addl_name = ['LR']

fam = names + addl_name

fam[1:]
fam[:]


x=list()

type(x)

dir(x)

fam[-1]

fam.pop()

fam

fam = fam + addl_name

things = list()
things.append('Book')
things.append(5)
things
things.append('food')
things.sort() ## TypeError: '<' not supported between instances of 'int' and 'str'

nums = [3, 9, 6, 10, 4, 7]

nums.sort()

nums.reverse()

len(nums)

max(nums)

min(nums)

sum(nums)

sum(nums)/len(nums)

total = 0
count = 0
while True :
    number = input('Enter a number: ')
    if number == 'done' : break
    value = float(number)
    total = total + value
    count += 1
average = total / count
print('Average:' , average)
print('Total:', total)
print('Count:', count)

numlist = list()
while True :
    inp = input("Enter a numner")
    if inp == 'done' : break
    value = float(inp)
    numlist.append(value)
    
average = sum(numlist) / len(numlist)
print('Average:' , average)
print('Total:', sum(numlist))
print('Count:', len(numlist))


line = 'this is the single line'
splits = line.split()
print(splits)


for word in splits:
    print(word)

^ = Match start of the line
. = Many times
+ = One or more times
\S = Match any non-white space characters
[0-9]+ = atleat 1 digits

^X.*
^X-\S+