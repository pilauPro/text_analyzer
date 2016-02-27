# Text analyzer exercise from Beginning Ruby Chapter 4
class TextFile
	def initialize(file)
		@file = File.readlines(file)
	end

	def line_count
		@file.size
	end

	def char_count
		@file.join.size
	end

end

puts "specify file:"
# Use File method readlines to store text lines in array
current = TextFile.new(gets.chomp)

# Store number of lines in variable
# line_count = lines.size

# join text lines array into a string
# text = lines.join
# characters = text
# non_white_chars = text.scan(/\S/)
# words = text.split
# sentences = text.split(/[\.\?\!]/)
# paragraphs = text.split(/\n\n/)

puts "line count: #{current.line_count}"
puts "all characters: #{current.char_count}"
# puts "characters excluding spaces: #{non_white_chars.length}"
# puts "words: #{words.length}"
# puts "sentences: #{sentences.length}"
# puts "paragraphs: #{paragraphs.length}"

# puts "average words per sentence: #{words.length / sentences.length}"
# puts "average sentences per paragraph: #{sentences.length / paragraphs.length}"