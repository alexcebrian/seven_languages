puts "Hello, World"
puts "\n"

hello = 'Hello, Ruby'

puts "Index of Ruby in '#{hello}': " + hello.index('Ruby').to_s
puts "\n"

(1..10).each { |i| puts "Alex Cebrian: #{i}" }
puts "\n"

puts "This is the sentense number 1.".gsub(/\d/, '10')
puts "\n"
