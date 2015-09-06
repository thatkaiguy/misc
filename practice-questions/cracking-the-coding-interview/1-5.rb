# Write a method to replace all spaces in a string with '%20'.

def replace_spaces(str)
  replacement_chars = "%20"

  str.gsub(" ", replacement_chars)
end
