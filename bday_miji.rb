require 'csv'

dob = []
full_name = []

CSV.foreach('birthday_data.csv') do |line|

  full_name.push ("#{line[1]} #{line[0]}")
  dob.push (line[2].split('/'))

end

hash = {}
full_name.zip(dob) {|k,v| hash[k.to_sym] = v}

puts "Who are you looking for?"

name = gets.chomp

if full_name.include? name

  age = ((Time.now - Time.new(hash[:"#{name}"][0],hash[:"#{name}"][1],hash[:"#{name}"][2])) / 60 / 60 / 24 / 365).to_i
  puts age

else

  puts "There is no person with that name"

end


