count = 0
#	Scrape	the	Potatoes
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

# Cut potatoes
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

#Add potatoes and onion to the pan
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

#Stirring
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

#Breaking Eggs
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
      puts "You ruined your dish!"
      sleep 0.5
    end
    counter += 1
  end
  puts "Done adding salt!"
  count += 1
  what_to_do(count)
end

#Asks what user wants to do. Gives help with usable methods
def what_to_do(count)
  puts "What do you want to do?"
  sleep 0.5
  puts "Type help for available commands!"
  answer = gets.chomp.downcase
  if answer.include? "help" or answer.include? "Help"
    unless count >= 0
      puts "You can choose between:"
      sleep 0.5
    end
    unless count > 0
      puts "Scrape potatoes"
      sleep 0.5
    end
    unless count > 1
      puts "Cut potatoes"
      sleep 0.5
    end
    unless count > 2
      puts "Add potatoes to pan"
      sleep 0.5
    end
    unless count > 3
      puts "Stir"
      sleep 0.5
    end
    unless count > 4
      puts "Break eggs"
      sleep 0.5
    end
    puts "Add salt"
    sleep 0.5
    puts "Exit"
    answer = gets.chomp
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
  elsif answer.include? "exit"
    exit
  else
    puts "Thats not the right order! Try again"
    sleep 2
    try_again(count)
  end
end

#Try again class when user gave a wrong input
def try_again(count)
  what_to_do(count)
end
what_to_do(count)
