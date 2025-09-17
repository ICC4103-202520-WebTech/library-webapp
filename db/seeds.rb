# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

jordan_peterson = Author.create! first_name: "Jordan", last_name: "Peterson" 
juan_perez = Author.create! first_name: "Juan", last_name: "Pérez"
martin_fowler = Author.create! first_name: "Martin", last_name: "Fowler"

refactoring = Book.create! title: "Refactoring", publication_date: Date.new(2000, 5, 5), author_id: martin_fowler.id
papelucho = Book.create! title: "Papelucho", publication_date: Date.new(1960, 5, 5), author_id: juan_perez.id

