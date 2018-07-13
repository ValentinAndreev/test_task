class Sequence
  def initialize
    @value = '1'
  end

  def call(len)
    puts @value
    len.times do
      next_value = @value.chars.inject([]) do |arr, next_char|
        values_number(arr, next_char)
      end
      puts next_seq(next_value)
    end
    @value
  end

  def reset
    @value = '1'
  end

  private

  def next_seq(next_value)
    @value = ''
    next_value.map do |hash| 
      hash.each_pair { |k,v| @value << "#{v}#{k}" }
    end
    @value
  end

  def values_number(arr, next_char)
    if arr.any? && arr.last.has_key?(next_char)
      arr.last[next_char] += 1
    else
      arr << { next_char => 1 }
    end
    arr
  end
end
