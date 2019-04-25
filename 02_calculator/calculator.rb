#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum arr
    arr.sum
end

def power num1, num2
    num1 ** num2
end

def multiply *args
    if args.length < 3
    args[0] * args[1]
    elsif args.length > 3
        args[0] * args[1] * args[2] * args[3]
    end
end

def power num1, num2
    num1 ** num2
end

def factorial num
    if num == 0 || num == 1
        1
    elsif num > 1
        num * factorial(num - 1)
    end
end