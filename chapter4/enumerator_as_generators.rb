triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

# 5.times {print triangular_numbers.next, "\n"}
# p triangular_numbers.last(5)

def infinate_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinate_select(triangular_numbers) {|val| val % 10 ==0}.first(5)