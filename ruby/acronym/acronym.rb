# version alpha

class Acronym
  class << self
    def abbreviate(word)
      word.split(/\W+/).map { |w| w[0].upcase }.join
    end
  end
end

puts Acronym.abbreviate('hello chris man')

# version beta
#
# def abbreviate_two(word)
#   word.scan(/\b\w/).join.upcase
# end
# 
# puts abbreviate_two('hello darkness my old friend')
