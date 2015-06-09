triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

class Enumerator
  def my_infinite_select(&block)
    Enumerator.new do|yielder|
      self.each do |value|
        yielder.yield value if block.call(value)
      end
    end
  end
end

p triangular_numbers
  .my_infinite_select {|val| val %10 ==0}
  .my_infinite_select{|val|val.to_s =~ /3/}
.first(5)