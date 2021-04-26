movies = {
  StarWars: 4.8, 
  Divergent: 4.7,
  Matrix: 5
}

puts "What would you like to do? "
puts "Hints"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "What rating does the movie have? "
    rating = gets.chomp.to_i
    movies[title] = rating
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end

when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end
    
    
    
    
    
    
    
    
    
