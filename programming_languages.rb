require 'pry'
=begin
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

=end


def reformat_languages(languages)
  new_hash = {}
  i = 0
  both_styles = languages[:oo].merge(languages[:functional])
  new_keys = both_styles.keys
  new_vals = both_styles.values
  style_array = []

  while i < new_keys.length
    new_hash[new_keys[i].to_sym] = new_vals[i]
    i += 1
  end


  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
      #binding.pry
    end
  end
new_hash
end

#reformat_languages(languages)
