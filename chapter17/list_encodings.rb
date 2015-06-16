encodings = Encoding.list.each.with_object({}) do |enc, full_list|
  full_list[enc.name] = [enc.name]
  puts enc.name
end

puts __ENCODING__
