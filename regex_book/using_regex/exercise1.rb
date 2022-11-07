# write a method that returns true if its argument looks like an URL false if it does not.

def url?(link)
  link =~ /\Ahttps?:\/\/\S+\z/ ? true : false
end

def url?(link)
  !!link.match(/\Ahttps?:\/\/\S+\z/)
end

def url?(link)
  link.match?(/\Ahttps?:\/\/\S+\z/)
end

p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false