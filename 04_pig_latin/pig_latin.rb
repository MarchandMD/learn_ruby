#write your code here
def translate str
    if str[0].match(/[aeiou]/i) && str.include?(' ') != true
    str + "ay"
    elsif str[0].match(/[^aeiou]/i) && str[1].match(/[aeiou]/i) && str.include?(' ') != true
        if str[0].match(/q/i) && str[1].match(/u/i)
            str[2..-1] + str[0..1] + "ay" 
        else
            str[1..-1] + str[0] + "ay"
        end
    elsif str[0].match(/[^aeiou]/i) && str[1].match(/[^aeiou]/i) && str[2].match(/[^aeiou]/i) && str.include?(' ') != true
        str[3..-1] + str[0..2] + "ay"
    elsif str[0].match(/[^aeiou]/i) && str[1].match(/[^aeiou]/i)  && str[2].match(/[aeiou]/i)  && str.include?(' ') != true
        if str[1].match(/q/i) && str[2].match(/u/i)
            str[3..-1] + str[0..2] + "ay"
        else
            str[2..-1] + str[0..1] + "ay"
        end
    elsif str.include?(' ') == true
        arr = str.split(' ')
        if arr.length > 2
            arr = arr.collect{|x| translate(x)}
            "#{arr[0]} #{arr[1]} #{arr[2]} #{arr[3]}"
        else
            arr[0] + "ay" + ' ' + arr[1][1..2] + "pay"
        end
    end
end