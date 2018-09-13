require "yaml"
require "pry"

def load_library(path)
  emoticons = { "get_meaning" => {},"get_emoticon" => {} }
  
  YAML.load_file(path).each do |name, emojis|
    e, j = emojis
    emoticons["get_emoticon"][e] = j
    emoticons["get_meaning"][j] = name 
  end 
  
  emoticons
 
  #the keys inside the 'get_meaning' hash are the Japanese emoticons (FAILED -5)
  #the emoticon keys inside the 'get_meaning' hash point to their meanings (FAILED - 6)
  #the keys inside the 'get_emoticon' hash are the English emoticons (FAILED -7)
  #the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents (FAILED - 8)
end 

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end