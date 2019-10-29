# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mobile_app_tag = Tag.create(name: "Mobile App", key: "mobile-app")
web_dev_tag = Tag.create(name: "Web Development", key: "web-development")
web_design_tag = Tag.create(name: "Web Design", key: "web-design")

gavel_it = PortfolioItem.create(
    title: "Gavel-it - Settling Everyday Debates",
    description: "Gavel-it is a mobile app that helps you solve those pesky debates with your friends. How fast did Steve run in the third grade? Now you'll know with the help of you social network and Gavel.",
    tags: [mobile_app_tag]
)

mindsport = PortfolioItem.create(
    title: "Improving Athletics Through Daily Mediation",
    description: "Mindsport is a mobile app that makes you a better athele. The secret recipe is all about mediation and mindfulness.",
    tags: [mobile_app_tag, web_design_tag]
)