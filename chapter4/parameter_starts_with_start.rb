require 'awesome_print'
def foo(*args)
  puts args.class
  puts args.length
  p args
end

# foo 'hello', 'world'
a = [1, 2]
foo(*a)