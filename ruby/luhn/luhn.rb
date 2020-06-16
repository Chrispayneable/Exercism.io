class Luhn
  class << self
    def valid?(input_num)
    return false if input_num.gsub(/\s/, '').length <= 1
    return false if input_num.gsub(/\s/, '') =~ /\D/

    input_num.gsub(/\s/, '').split('').reverse.each_with_index.map do |digit, index|

      digit = digit.to_i
      if index.odd?
        digit *= 2
        digit -= 9 if digit > 9
      end
      digit
    end
              .sum % 10 == 0
    end
  end
end
