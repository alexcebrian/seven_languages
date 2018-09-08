class CsvRow
	attr_accessor :content, :headers

	def initialize(c, h)
		@content = c
		@headers = h
	end

	def method_missing(name)

		header = name.to_s
		header_index = @headers.find_index header

		raise 'Invalid header name' if header_index.nil?

		@content[header_index]
	end
end

module ActsAsCsv
	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods

		attr_accessor :headers, :csv_contents

		def initialize
			read
		end

		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')

			file.each { |row| @csv_contents << CsvRow.new(row.chomp.split(', '), @headers) }
		end
	end
end

class RubyCsv
	include ActsAsCsv
	acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect


m.csv_contents.each { |row| puts row.header2 }
