# Text analyzer exercise from Beginning Ruby Chapter 4

# Use File method readlines to store text lines in array
lines = File.readlines("text.txt")

# Store number of lines in variable
line_count = lines.size

# join text lines array into a string
text = lines.join
characters = text
non_white_chars = text.scan(/\S/)
words = text.split
sentences = text.split(/[\.\?\!]/)
paragraphs = text.split(/\n\n/)

puts "line count: #{line_count}"
puts "all characters: #{characters.length}"
puts "characters excluding spaces: #{non_white_chars.length}"
puts "words: #{words.length}"
puts "sentences: #{sentences.length}"
puts "paragraphs: #{paragraphs.length}"

puts "average words per sentence: #{words.length / sentences.length}"
puts "average sentences per paragraph: #{sentences.length / paragraphs.length}"