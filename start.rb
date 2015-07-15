
#Loads the help file. Seperated for easier editing
load 'help.rb'
#Loads oracle file, for the second programme
load 'oracle.rb'
#Loads the recipe file, for the first programme
load 'recipe.rb'
puts "enter which programme you want to start"
puts "Oracle or Recipe"
answer = gets.chomp.downcase
if answer.include? "recipe"
  count = 0
  what_to_do(count)
else
  question
end
