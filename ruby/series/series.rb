class Series
  def initialize(series)
    @series = series
  end

  def slices(num)
    if num > @series.length
      raise ArgumentError
    else
      slices = []
      @series.split('').each_cons(num) do |slice|
        slices << slice.join
      end
      slices
    end
  end
end
