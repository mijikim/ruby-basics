puts "How many bottles of beer should we sing?"

while true

  response = gets.chomp.split

  word = response[0]

  number = (response[1]).to_i

  if response == []

    puts "I need to know how many bottles to sing!"

  elsif word != 'sing' || number <= 0

    puts "ERROR"

    break

  else

    while number > 2

      puts "#{number} bottles of beer on the wall, #{number} bottles of beers!
      Take one down pass it around, #{number-1} bottles of beer on the wall!"

      number -=1

    end

    puts "#{number} bottles of beer on the wall, #{number} bottles of beers!
      Take one down pass it around, #{number-1} bottle of beer on the wall!"

    number -=1

    puts "#{number} bottle of beer on the wall, #{number} bottle of beers!
      Take one down pass it around, #{number-1} bottles of beer on the wall!"

  end

end