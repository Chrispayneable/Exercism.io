class FlattenArray

  def self.flatten(array, result=[])
    array.each do |element|
      next if element.nil?
      element.kind_of?(Array) ? flatten(element, result) : result << element
    end
    result
  end
end
