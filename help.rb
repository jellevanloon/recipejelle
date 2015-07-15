#Help method
def help(count, answer)
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
  puts "Add pepper"
  sleep 0.5
  puts "Serve dish"
  sleep 0.5
  puts "Exit"
  sleep 0.5
  puts "List will show only available commands, check back later for more!"
  puts "type anything to continue"
  answer = gets.chomp.downcase
  if answer == 'y'
    what_to_do(count)
  else
    what_to_do(count)
  end
end
#Oracle help method
def oracle_help
  puts "These are the available oracle commands"
  sleep 0.5
  puts "What is my name?"
  sleep 0.5
  puts "What is your name?"
  sleep 0.5
  puts "Where do you live?"
  sleep 0.5
  puts "Where were you made?"
  sleep 0.5
  puts "What day is it?"
  sleep 0.5
  puts "How old are you?"
  sleep 0.5
  puts "How old am I?"
  sleep 0.5
  puts "Reverse: [enter text here]"
  sleep 0.5
  puts "Is this a palindrome?"
  sleep 0.5
  puts "exit"
  sleep 0.5
  question
end
