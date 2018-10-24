require "pry"
def reformat_languages(languages)
  new_hash = {}
  style_array = []

  languages.each do |style, language| #:oo, :functional
#    style_array = []
    language.each do |key, value| #:ruby, :javascript, :python, etc
#      temp_type = value[0]
#      new_hash[key] = {temp_type, :style => []}
      new_hash[key] = {:type => value[:type], :style => []}
      if !style_array.include?(style)
        new_hash[key][:style] << style
      end
    end
  end
  new_hash
end
