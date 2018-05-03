require 'pry'
def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, lang|
      lang.each do |lang_name, type|
        new_hash[lang_name] = type
        binding.pry if lang_name == :javascript 
        if !new_hash[lang_name][:style]
        new_hash[lang_name][:style] = []
      end 
      new_hash[lang_name][:style].push(style) 
    end 
  end
  new_hash
end
