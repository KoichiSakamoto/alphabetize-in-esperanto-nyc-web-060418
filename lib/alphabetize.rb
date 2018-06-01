require 'pry'



#def generate_esperanto_hash
#  esp_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
#  new_hash = {}
#  esperanto_array = esp_alphabet.chars
#  priority = 1
#  esperanto_array.each do |letter|
#    new_hash[letter] = priority
#    priority += 1
#  end
#  new_hash
#end

def create_index_array(string)
  esp_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  string = string.delete(" ")
  char_arr = string.chars
  return_arr = []
  char_arr.each do |character|
    return_arr.push(esp_alphabet.index(character))
  end
  return_arr
end

def alphabetize(arr)
  # code here
esp_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
return_arr = arr.sort_by {|string| create_index_array(string)}
return_arr
end
