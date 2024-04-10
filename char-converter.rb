#!/usr/bin/env ruby

# Check if the correct number of arguments are provided
if ARGV.length != 2
  puts "Usage: #{__FILE__} <flag> <string>"
  puts "Flags:"
  puts "  -b  Convert string to binary"
  puts "  -h  Convert string to hexadecimal"
  puts "  -a  Convert string to ASCII (decimal values)"
  puts "  -o  Convert string to octal"
  puts "  -n  Convert UTF-8 binary to char"
  exit
end

flag, input_string = ARGV

puts "Input: #{input_string}"

case flag

when '-b'
  # Convert string to binary
  puts "Binary: "+input_string.bytes.map { |b| b.to_s(2).rjust(8, '0') }.join(' ')
when '-h'
  # Convert string to hexadecimal
  puts "HEX: "+input_string.bytes.map { |b| b.to_s(16).rjust(2, '0') }.join(' ')
when '-a'
  # Convert string to ASCII (decimal values)
  puts "ASCII: "+input_string.bytes.join(' ')
when '-o'
  # Convert string to octal
  puts "Octal: "+input_string.bytes.map { |b| b.to_s(8).rjust(3, '0') }.join(' ')
when '-n'
  if (((input_string.length ) % 8 ) == 0 )
    # Convert UTF-8 binary to char
    puts "UTF-8: "+input_string.split(' ').map { |b| b.to_i(2).chr(Encoding::UTF_8) }.join
  else
    puts "Invalid Binary"
  end
else
  puts "Invalid flag: #{flag}"
end

