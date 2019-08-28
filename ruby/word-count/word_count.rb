class Phrase
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_array = @phrase.downcase.scan(/\b[\w']+\b/)
    word_hash = Hash.new(0)

    word_array.each do |x|
      word_hash[x] += 1
    end

    word_hash.each do |y, x|
      puts "#{y} => #{x}"
    end
  end
end
