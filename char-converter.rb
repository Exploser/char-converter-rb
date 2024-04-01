# char-converter.rb

# Get the string from the user
input_string = ARGV[0] || "Test"

# Empty hash to store char counts
char_counts = Hash.new(0)

input_string.each_char do |char|
  char_counts[char] += 1
end

# Print the char
puts "Character counts:"
char_counts.each do |char, count|
  puts "#{char}: #{count}"
end
