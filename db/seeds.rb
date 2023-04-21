# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
article = Article.new(
  title: "Ditch Plastic Toothbrushes",
  body: "The average person discards their toothbrush every three to five months. In the United States around one billion plastic toothbrushes are thrown away every year, which creates 50 million pounds of waste annually. Since most toothbrushes are made from polypropylene plastic and nylon, they can take up to 500 years or more to decompose",
  category: "Festivals",
  prefecture: "Tokyo",
  status: "public"
# file = File.open("app/assets/images/challenge/4741039_s.jpg")
# challenge.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
)
article.save!
