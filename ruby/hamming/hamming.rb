class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length

    distance = 0
    index = 0

    while index < str1.length
      if str1[index] != str2[index]
        distance += 1
      end
      index += 1
    end
    distance
  end
end
