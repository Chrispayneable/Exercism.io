class Acronym
  def self.abbreviate(string)
    string.split(/\W+/).map { |word| word[0].capitalize }.join
  end
end
