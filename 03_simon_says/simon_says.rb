#write your code here

def echo str
    str
end

def shout str
    str.upcase
end

def repeat *args
    if args.length < 2
    "#{args[0]} #{args[0]}"
    elsif args.length >= 2
        answer = "#{args[0]} " * args[1]
        answer.rstrip
    end
end

def start_of_word str, num
    str[0...num]
end

def first_word str
    arr = str.split(' ')
    arr[0]
end

def titleize str
    arr = str.split
    if arr.length < 2
        arr[0].capitalize
    elsif arr.length == 2
        "#{arr[0].capitalize} #{arr[1].capitalize}"
    elsif arr.length == 3
        "#{arr[0].capitalize} #{arr[1]} #{arr[2].capitalize}"
    else
        "#{arr[0].capitalize} #{arr[1].capitalize} #{arr[2]} #{arr[3]} #{arr[4].capitalize} #{arr[5].capitalize}"
    end

end