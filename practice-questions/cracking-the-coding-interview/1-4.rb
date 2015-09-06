# Write a method to decide if two strings are anagrams or not

def are_anagrams?(str1, str2)
  str1.chars.sort == str2.chars.sort
end
