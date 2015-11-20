custom_souq = []

not_in_stock = []

selection = ""

souq_items = ["old paperback book",
"potato", "red onion", "dried lemon",
"frankincense", "medicinal herbs", "saffron",
"glass spice jar", "red fabric", "orange fabric",
"handicraft", "small Persian rug", "medium Persian rug",
"large Persian rug", "extra large Persian rug"]

puts "Hi. What's your name?"
name = gets.chomp
puts "Hello #{name}."

while true
  puts "Here's what we have in stock:"
  souq_items.each do |item|
    puts "* #{item}"
  end
  puts "What are you going to buy? (enter 'finished' when done shopping)"
  selection = gets.chomp.downcase
  if selection == "finished"
    break
  elsif souq_items.include?(selection)
    custom_souq << selection
    puts selection.to_s + " has been added!"
  else
    puts "We don't have those in stock. Pick something we do."
    not_in_stock << selection
  end
end
  puts "#{name}, thanks for shopping. Here's your total selection:"
  custom_souq.each do |item| puts "* #{item}"
  print "\n"
  puts "Btw, we noticed you entered some items that aren't included
  in our onlinq Souq. We don't have them in stock, but if we get any,
  we'll let you know."
  not_in_stock.each do |item| puts "* #{item}"
end
