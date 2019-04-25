class Book

    def title=(value)
        #This is an attribute writer method
        @title = value
        
    end

   def title
    #this is an atrribute reader method; 
     @title = format_title
   end

   def format_title
        arr = @title.split(' ')

        arr.map! {|word| word.downcase}

        string = arr.map! do |word| 
            if word != "and" && word != "in" && word != "the" && word != "of" && word != "a" && word != "an" 
                word.capitalize
            else
                word
            end
        end
        .join(' ')

        if string.start_with?('the')
            string.gsub(/^t/, "T")
        else
            string
        end

   end

end
