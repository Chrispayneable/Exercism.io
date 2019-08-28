class Raindrops
  def self.convert(num)
    response = ""

    if num % 3 == 0
      response << "Pling"
    end
    if num % 5 == 0
      response <<  "Plang"
    end
    if num % 7 == 0
      response <<  "Plong"
    end

    if response.empty?
      return num.to_s
    else
      return response
    end
  end
end
