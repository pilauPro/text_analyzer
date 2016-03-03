# Text analyzer exercise from Beginning Ruby Chapter 4
class TextFile
	def initialize(file)
		@file = File.readlines(file)
		@text = join_file
	end

	def line_count
		@file.size
	end

	def join_file
		@file.join
	end

	def char_count
		@text.size
	end

	def real_char_count
		@text.scan(/\S/).size
	end

	def word_count
		@text.split.size
	end

	def sentence_count
		@text.split(/[\.\?\!]/).size
	end

	def paragraph_count
		@text.split(/\n\n/).size
	end

	def avg_words
		(word_count / sentence_count.to_f).round(2)
	end

	def avg_sentences
		(sentence_count / paragraph_count.to_f).round(2)
	end

end

current = TextFile.new("text.txt")

puts "line count: #{current.line_count}"
puts "all characters: #{current.char_count}"
puts "characters excluding spaces: #{current.real_char_count}"
puts "word count: #{current.word_count}"
puts "sentences: #{current.sentence_count}"
puts "paragraphs: #{current.paragraph_count}"

puts "average words per sentence: #{current.avg_words}"
puts "average sentences per paragraph: #{current.avg_sentences}"