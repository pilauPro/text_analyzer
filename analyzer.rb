# Text analyzer exercise from Beginning Ruby Chapter 4

# variable for tracking lines of text
line_count = 0

# open the text file and count lines of text
File.open("text.txt").each { line_count += 1 }

puts line_count