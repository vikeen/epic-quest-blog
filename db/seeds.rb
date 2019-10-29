# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


gavel_it = PortfolioItem.create(
    title: "Gavel-it - Settling Everyday Debates",
    description: "Gavel-it is a mobile app that helps you solve those pesky debates with your friends. How fast did Steve run in the third grade? Now you'll know with the help of you social network and Gavel."
)

gavel_it.tags.create(name: "Mobile App", key: "mobile-app")