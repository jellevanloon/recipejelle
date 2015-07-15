load 'help.rb'
#Counter for keeping track which methods should be available. Used in help function too.
count = 0
#	Scrape	the	Potatoes.
def scrape_potatoes(count)
  counter	=	1
  while counter	<	6
    puts	"Scrape	potato	#{counter}."
    sleep 0.5
    counter	+= 1
  end
  puts "Done scraping the potatoes!"
  count += 1
  what_to_do(count)
end

# Cut potatoes.
def cut_potatoes(count)
  counter = 1
  until counter == 6
    puts "Cut potato #{counter}."
    sleep 0.5
    counter += 1
  end
  puts "Done cutting the potatoes!"
  count += 1
  what_to_do(count)
end

#Add potatoes and onion to the pan.
def add_potatoes_to_pan(count)
  for counter in 1..5
    puts "Add potato #{counter} to the pan."
    sleep 0.5
  end
  puts "Add onion to the pan"
  sleep 0.5
  puts "Done adding potatoes and onion to the pan!"
  count += 1
  what_to_do(count)
end

#Stirring.
def stir(count)
  minutes = 30
  loop do
    minutes -= 1
    next if minutes % 5 != 0
    puts "#{minutes} minutes left"
    puts "Stirring!"
    sleep 0.5
    break if minutes == 0
  end
  puts "Done stirring!"
  count += 1
  what_to_do(count)
end

#Breaking Eggs.
def break_eggs(count)
  eggs = [1, 2, 3, 4, 5, 6]
  eggs.each do |egg|
    puts "Break egg #{egg}."
    sleep 0.5
  end
  puts "Beat the eggs separately"
  sleep 0.5
  puts "Done with the eggs!"
  count += 1
  what_to_do(count)
end

#Adding salt with comments on how much salt is used.
def add_salt(count)
  puts "How many pinches of salt"
  userinput = gets.chomp
  counter = 1
  until counter > userinput.to_i
    puts "Adding a pinch of salt"
    sleep 0.5
    if counter == 3
      puts "You like a lot of salt!"
      sleep 0.5
    end
    if counter == 5
      puts "You ruined your omelette!"
      sleep 0.5
    end
    counter += 1
  end
  puts "Done adding salt!"
  count += 1
  what_to_do(count)
end

#Add pepper with comments to user about how much pepper is added.
def add_pepper(count)
  puts "How much pepper do you want. Answer with 'a little', 'spicy' and 'red peppers only'"
  userinput = gets.chomp.downcase
  counter = 0
  if userinput.include? "little"
    counter = 1
  elsif userinput.include? "spicy"
    counter = 3
  elsif userinput.include? "red pepper"
    counter = 6
  end
  counts = 0
  until counts > counter
    puts "Adding some pepper"
    sleep 0.5
    if counts == 3 && counter == 3
      puts "You like it spicy!"
      sleep 0.5
    end
    if counts == 5 && counter == 6
      puts "You like it very very hot!"
      sleep 0.5
    end
    counts += 1
  end
  puts "Done adding pepper!"
  count += 1
  what_to_do(count)
end

#Serve dish and terminate the script!
def serve_dish
  puts "You've added all ingredients in the correct way, well done!"
  puts "You can now enjoy your meal!"
  puts "Good bye!!"
  exit
end

#Asks what user wants to do. Gives help with usable commands.
def what_to_do(count)
  puts "What do you want to do?"
  sleep 0.5
  puts "Type help for available commands!"
  answer = gets.chomp.downcase
  if answer.include? "help"
    help(count, answer)
  end
  if answer.include? "scrape" and count == 0
    scrape_potatoes(count)
  elsif answer.include? "cut" and count == 1
    cut_potatoes(count)
  elsif answer.include? "add" and count == 2 and answer.include? "potatoes"
    add_potatoes_to_pan(count)
  elsif answer.include? "stir" and count == 3
    stir(count)
  elsif answer.include? "break" and count == 4
    break_eggs(count)
  elsif answer.include? "salt" and count > 4
    add_salt(count)
  elsif answer.include? "pepper" and count > 4
    add_pepper(count)
  elsif answer.include? "exit"
    exit
  elsif answer.include? "serve" and count > 4
    serve_dish
  else
    puts "Thats not the right order! Try again"
    sleep 2
    try_again(count)
  end
end

#Try again class when user gave a wrong input.
def try_again(count)
  what_to_do(count)
end

#Command to start the programme.
what_to_do(count)
