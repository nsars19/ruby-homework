def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    sum = 0
    array.each do |i|
        sum += i
    end

    sum
end

def multiply num1, num2, *rest
    total = num1 * num2
    rest.each do |e|
        total *= e 
    end
    total
end

def power num1, num2
    num1 ** num2
end

def factorial num
    total = 1
    while num >= 2
        total *= num
        num -= 1
    end
    total
end