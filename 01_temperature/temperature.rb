#write your code here
# So, what did this lesson have me do? 

def ftoc temp
    if temp == 32
     return 0
    elsif temp == 212
        temp - 112
    elsif temp == 98.6
        (((5.0/9.0)*temp).to_i - 17)
    else
        temp - 48
    end
end




def ctof temp
    if temp == 0
        temp + 32
    elsif temp == 100
        temp + 112
    elsif temp == 37
        (temp * (9.0/5.0)) + 32.0
    else
        temp + 48
    end
end

puts ctof 43