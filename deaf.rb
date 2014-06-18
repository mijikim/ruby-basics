puts "Hi, please say something."

while true

  response = gets.chomp

  if response != response.upcase

    puts "HUH?! SPEAK UP SONNY!"

  elsif response == ''

    puts "BYE"

    break

  else

    puts "NO, NOT SINCE #{rand(1930..1950)}!"

  end

end