# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
Tag.delete_all
Tagging.delete_all

10.times do
  Post.create(title: Faker::HarryPotter.book, body: Faker::Hipster.paragraph(2))
end

20.times do
  Tag.create(name: Faker::Color.color_name)
end

postFirst = Post.all.first.id
postLast = Post.all.first.id

tagFirst = Tag.all.first.id
tagLast = Tag.all.last.id

20.times do
  Tagging.create(tag_id: rand(1..20), post_id: rand(postFirst..postLast))
end
