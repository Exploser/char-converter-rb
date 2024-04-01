
# char-converter.rb

# Check if any arguments were passed
if ARGV.length == 0
  puts "No arguments were provided."
else
  puts "Provided Arguments:"
  ARGV.each_with_index do |arg, index|
    puts "Argument #{index + 1}: #{arg}"
  end
end
