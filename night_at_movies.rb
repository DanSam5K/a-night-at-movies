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
  puts "What movie would you like to update?"
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "movie is does not exist in library"
  else
    puts "What new rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "updated successfully"
  end
when "display"
  movies.each do
    |title, rating| puts "#{title}: #{rating}"
  end
when "delete"
  puts "what movie would you like to delete"
  title = gets.chomp.intern
  if movies[title.intern].nil?
    puts "does not exist, can\'t delete"
  else
    movies.delete(title.intern)
    puts "sucessfully deleted"
  end
else
  puts "Input a Valid choice see Hints!"
end
    
    
    
    
    
    
    
    
    
