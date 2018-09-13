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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end