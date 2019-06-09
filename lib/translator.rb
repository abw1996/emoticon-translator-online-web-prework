require 'yaml' 
require 'pry'
def load_library(direct)
  libertee = {"get_meaning"=> {} , "get_emoticon"=> {}}
  leeberee = YAML.load_file(direct)
  leeberee.each do |type, arri|
    libertee["get_meaning"][arri[1]] = type
    libertee["get_emoticon"][arri[0]] = arri[1]
  end
  libertee
end

def get_japanese_emoticon(directory, eng_emoticon)
  library = load_library(directory)
  if library["get_emoticon"].keys.include?(eng_emoticon)
    library["get_emoticon"][eng_emoticon]
  else 
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(directory, jap_emoticon)
  library = load_library(directory)
  if library["get_meaning"].keys.include?(jap_emoticon)
    library["get_meaning"][jap_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end