require 'awesome_print'

def words_from_string(string)
  string.downcase.scan /[\w']+/
end