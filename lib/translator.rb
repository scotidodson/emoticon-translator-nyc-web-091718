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
end 

def get_japanese_emoticon(path, emoticon)
  puts load_library(path)
  
  return emoticons["get_emoticon"][emoticon]
  # accepts two arguments, the YAML file path and the emoticon (FAILED - 1)
  # calls on #load_library and gives it the argument of the file path (FAILED - 2)
  # returns the Japanese equivalent of an English grinning (FAILED - 3)
  # returns the Japanese equivalent of an English happy (FAILED - 4)
  # returns the Japanese equivalent of an English sad (FAILED - 5)
  # returns an apology message if the argument is not a known emoticon (FAILED - 6)
end

def get_english_meaning
  # code goes here
end