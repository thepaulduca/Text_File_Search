#Set line_count to 0, giving a varible for # of lines
line_count = 0
#Setting varible text to an empty string, this is where we will collect the text 
text = ''
#Open the file, the each method will send EACH part of the object through the block, every time it sends a line line_count will go up 1
#Then add each line to the variable text, now you have saved all your text in one place
File.open("text.txt").each do |line|
  line_count += 1
  text << line
end 
puts "Lines: #{line_count}"
#split up text where there are spaces to determine word count
word_count = text.split.length
puts "Words: #{word_count}"
#takes the amount of charaters in the string text - stores it in a variable - then prints it to the console
char_count = text.length
puts "Character count: #{char_count}"
#store the string's lengeth without the spaces using a REGEX then print to the console
nospace_count = text.gsub(/\s+/,'').length 
puts "Character count without spaces: #{nospace_count}"
puts "Number of spaces: #{char_count - nospace_count}"
#use REGEX to count the number of sentences save to var
sentence_count = text.split(/\.|\?|!/).length
puts "Sentences: #{sentence_count}"
#count paragraphs using regular expression and store them in a var
para_count = text.split(/\n\n/).length
puts "Paragraphs: #{para_count}"
puts "Sentences per paragraph: #{sentence_count / para_count}"
puts "Words per sentence: #{word_count/sentence_count}"
stopwords = %w{the a by on for of are with just but and to the my i has in}
words = text.scan(/\w+/)
keywords = words.select {|word| !stopwords.include?(word)}
puts "Keywords: #{keywords.length}"