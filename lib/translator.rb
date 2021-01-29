require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  translator = {}
  emoticons.each do |key,value|
    translator[key] = {}
    translator[key][:english] = value[0]
    translator[key][:japanese] = value[1]
end
translator
  # code goes here
end


def get_japanese_emoticon(path,emoticon)
  library = load_library(path)
   emoticon = library.keys.find do |key|
     library[key][:english] == emoticon
   end
   emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  # code goes here
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
  # code goes here
end
