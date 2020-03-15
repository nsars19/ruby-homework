#write your code here

def echo str
    str
end

def shout str
    str.upcase
end

def repeat(str, num=2)
    count = 0
    arr = Array.new
    while count < num
        arr << str
        count += 1
    end
    arr.join(" ")
end

def start_of_word str, num=1
    new_str = String.new
    counter = 0
    num.times do
        new_str += str[counter]
        counter += 1
    end
    new_str
end

def first_word str
    str.split(' ')[0]
end

def titleize str
    arr = str.split(' ')
    i = 0
    while i < arr.length
        if arr[i] != 'the' or arr[i] != 'and'
            arr[i] = arr[i].capitalize
            i += 1
        end
        if arr[i] == 'the' || arr[i] == 'and' || arr[i] == 'over'
            arr[i] = arr[i].downcase
            i += 1
        end
    end

    for j in 1..arr.length
        if arr[j] == 'the' || arr[j] == 'and'
            arr[j] = arr[j].downcase
        end
    end

    arr.join(' ')
end

titleize('yeet yeetus yeetledee yeet and yeet the yeet')
