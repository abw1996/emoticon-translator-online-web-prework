require 'yaml' 
require 'pry'
def load_library(direct)
  libertee = {"get_meaning": {} , "get_emoticon": {}}
  leeberee = YAML.load_file(direct)
  leeberee.each do |type, arri|
    libertee["get_meaning"][arri[1]] = arri[0]
    libertee["get_emoticon"][arri[0]] = arri[1]
  end
  libertee
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end