require 'pry'
require 'pry-byebug'

def substrings(input_string, input_dictionary)

  # creates nested array for input string
  input_string_array = input_string.split(" ")
  first_loop_counter = 0
  input_string_array.each do |word|   
    input_string_array[first_loop_counter] = word.delete(",.!/'?").delete('"').downcase.split("")
    first_loop_counter += 1
  end
  

  # creates nested array for input dictionary
  input_dictionary_array = Array.new
  second_loop_counter = 0
  input_dictionary.each do |word|
    input_dictionary_array[second_loop_counter] = word.downcase.split("")
    second_loop_counter += 1
  end

  # main substring search functionality
  search_result = Hash.new
  input_string_array.each do |element|
    input_dictionary_array.each do |internal_element|
      internal_counter = 0
      for internal_counter in 0..internal_element.length 
        if element.include?(internal_element[internal_counter])
          internal_counter += 1
        else
          break
        end 
        if internal_counter == internal_element.length
          if search_result.include?(internal_element.join)
            search_result[internal_element.join] += 1
          elsif 
            search_result[internal_element.join] = 1
          end
        end
      end 
    end


  end

  p search_result

end

# testing 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)




