require 'pry'
require 'pry-byebug'

def substrings(input_string, input_dictionary)

  # creates nested array for input string
  input_string_array = input_string.downcase.split(" ")
  first_loop_counter = 0
  input_string_array.each do |word|   
    input_string_array[first_loop_counter] = word.split("")
    first_loop_counter += 1
  end

  # creates nested array for input dictionary
  input_dictionary_array = Array.new
  second_loop_counter = 0
  input_dictionary.each do |word|
    input_dictionary_array[second_loop_counter] = word.split("")
    second_loop_counter += 1
  end

  # continue here!
  search_result = Hash.new
  input_dictionary_array.each do |element|
    input_string_array.each do |internal_element|
      
    end
  end
end

# testing 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)




