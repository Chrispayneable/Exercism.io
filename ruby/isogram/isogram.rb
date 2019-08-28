class Isogram
  def self.isogram?(input)
    string = input.split(/\W+/).join
    string.downcase.chars.uniq == string.downcase.chars
  end
end
