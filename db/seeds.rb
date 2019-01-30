# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Category.destroy_all
User.destroy_all
Article.destroy_all

#Crée 20 utilisateurs random
20.times do
  user = User.create!(first_name: Faker::Pokemon.name, last_name: Faker::DragonBall.character, email: Faker::Internet.email)
end

#Crée 12 catégories random
12.times do
  category = Category.create!(name: Faker::Book.genre)
end

#Crée 50 articles random et leur attribue un utilisateur et une catégorie
50.times do
  article = Article.create!(title: Faker::Book.title, content: Faker::GreekPhilosophers.quote, user: User.find(rand(1..20)), category: Category.find(rand(1..12)))
end

#Crée 30 linkes random et leur attribue un article et un utilisateur
30.times do
  like = Like.create!(article: Article.find(rand(1..50)), user: User.find(rand(1..20)))
end
