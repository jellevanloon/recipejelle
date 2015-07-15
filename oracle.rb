def question
  require 'date'
  puts "Ask a question"
  puts "type 'Help' for a list of available commands"
  question = gets.chomp

  if question.include? ('your name')
    puts "My name is oracle"
  elsif question.include? "help"
    oracle_help
  elsif question.include? ('my name')
    sleep 0.5
    puts "What is your name?"
    input = gets.chomp
    capitazation = input.capitalize

    if input == capitazation
    else
      sleep 0.5
      puts "Please, Mind your capitals"
    end
    puts "Your name is #{capitazation}"
  elsif question.include? ("you live") or question.include? ("you come from") or question.include? ("where are you from")
    puts "I am inside your machine"
  elsif question.include? ("exit")
    return
  elsif question.include? ("made")
    puts "I am made on the developers bootcamp in amsterdam in 2015"
  elsif question.include? ("old") and question.include? ("you")
    datebuild = Date.new(2015,07,14)
    puts "I am build in #{datebuild}"
  elsif question.include? ("old") and question.include? ("I")
    puts "I dont know your age, but if you tell me I do. So tell me your age"
    input =gets.chomp
    puts "So, you are #{input}"
  elsif question.include? ("date") or question.include? ("day") or question.include? ("year") or question.include? ("month")
    date = Date.today
    puts "Today its #{date}"
  elsif question.include? ("reverse")
    backwards = question.reverse
    puts "#{backwards}"
  elsif question.include? ("palindrome")
    sleep 1
    puts "is your palindrome word based or character based"
    answer = gets.chomp.capitalize
    if answer.include? ("Word") or answer.include? ("word")
      puts "enter your palindrome now, please"
      question = gets.chomp.downcase
      normal = question.split
      reverse = normal.reverse
      n = normal.length
      counter = 0
      for i in 0..n-1
        if normal[i]==reverse[i]
          counter += 1
        else

        end
      end
      if counter == normal.length
        puts "its a palindrome"
      else
        puts "its not palindrome"
      end
    else
      puts "enter your character based palindrome"
      question = gets.chomp.delete(' ').delete(',').capitalize
      backwards = question.reverse.capitalize
      if backwards == question
        puts "#{question} is a palindrome!!!"
      else
        puts "No sorry #{question} is not a palindrome"
      end
    end
  else
    puts "I dont understand your question!"
  end
  askquestion
end
def askquestion
  sleep 2
  puts "do you want to ask another question?"
  input = gets.chomp.downcase
  if input.include? ("yes") or input.include? ("y")
    question
  else
    sleep 1
    puts "Do you want to try my Recipe programme?"
    puts "yes or no"
    answer = gets.chomp.downcase
    if  answer.include? "yes"
      count = 0
      what_to_do(count)
    else
      puts "Good bye!"
    end
  end
end
