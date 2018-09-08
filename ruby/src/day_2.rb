
def read_test
	filename = 'day_2_test.txt'

	File.open(filename) do |f|
		f.each_line { |l| puts l }
	end

	puts

	f = File.open(filename)
	f.each_line { |l| puts l }
	f.close

	puts

	File.foreach(filename) { |line| puts line  }

	puts
end

def print_every_n(n, a = [])
	a.each_with_index { |v, i| puts v if i % n == 0 }
end

def print_every_n_slice(n, a = [])
	a.each_slice(n) { |v| puts v[0] }
end

def grep_file(phrase)
	filename = 'day_2_test.txt'

	line_number = 0
	File.foreach(filename) do |line|
		line_number += 1
		puts "#{line_number}: #{line}" if line.match(phrase)
	end
end


# print_every_n_slice(4, (0..16))

puts 'with numbers:'
grep_file('1234')
puts
puts 'with text'
grep_file('text')
