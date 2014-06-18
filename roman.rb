puts "Please put in a number in xxxx format"

number = gets.chomp

first, second, third, fourth = number.split('').map { |digit| digit.to_i }

# 9

roman = ''

roman = roman + 'M' * first

if second == 9
  
  roman = roman + 'CM'
  
elsif second == 4
  
  roman = roman + 'CD'  
  
else
  
  roman = roman + 'D' * (second / 5)
  
  roman = roman + 'C' * (second % 5 / 1)
  
end

if third == 9
  
  roman = roman + 'XC'
  
elsif third == 4
  
  roman = roman + 'XL'  
  
else
  
  roman = roman + 'L' * (third / 5)
  
  roman = roman + 'X' * (third % 5 / 1)
  
end 

if fourth == 9
  
  roman = roman + 'IX'
  
elsif fourth == 4
  
  roman = roman + 'IV'  
  
else
  
  roman = roman + 'V' * (fourth / 5)
  
  roman = roman + 'I' * (fourth % 5 / 1)
  
end  
  
  puts roman