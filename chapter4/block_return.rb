def foo(arg)
  puts arg.to_s
  if block_given?
    yield
  end
  puts 'after block'
end

foo('hello') {puts 'in a block'}