def display():
    print("Hello")
    print(" World")
print("Welcome")

display()
Hello
 World

def greet(name):
    print("Hello " + name)
    print("Welcome to Python3 function class")

greet("Deeksha")
Hello Deeksha
Welcome to Python3 function class

print(4//5, 4%5)
print(5//5, 5%5)

0 4
1 0

def square(val):
    print("Square of ", val)    
    return val*val

print(square(5))
Square of  5
25

print(square(6))
Square of  6
36

def factorial(num):
    if (num == 1 or num == 0) :
        return 1
    res = num * factorial(num-1)
    return res

print(factorial(5))
120

print(factorial(0))
1

# missing calc -- fix it
def displayFactorial(num):
    print(num)
    if (num == 1):
        return 1
    res = print(num, factorial(num-1))
    return res

displayFactorial(10)
10
10 362880

displayFactorial(5)
5
5 24

while (True):
    line = input("> ")
    print(line)
    if (line == 'done'):
        break

> Hello
Hello
> Sathya
Sathya
> Deeksha
Deeksha
> Sai
Sai
> Sahasra
Sahasra
> Done
Done
> done
done

for i in [1,2,2,3,2,1]:
    print(i)

1
2
2
3
2
1

for i in range(10, 0, -1):
    print(i)

10
9
8
7
6
5
4
3
2
1


for i in range(0, 10, 2):
    print(i)

0
2
4
6
8

1 not in [1,2,3]
False

5 not in [1,2,3]
True

# Iterating using for
for i in range(5):
    print(i)

0
1
2
3
4

numbers = [3,41,12,9,74,15]
maxNumber = 0
for i in numbers:
    if (i > maxNumber):
        maxNumber = i
print(maxNumber)
74


