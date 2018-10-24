require "pry"
def reformat_languages(languages)
  new_hash = {}
#  style_array = []

  languages.each do |style, language| #:oo, :functional

    language.each do |key, value| #:ruby, :javascript, :python, etc
      new_hash[key] = {:type => nil, :style => []}
      new_hash[key][:type] = value
      new_hash[key][:style] << style
    end
  end
  new_hash
end
