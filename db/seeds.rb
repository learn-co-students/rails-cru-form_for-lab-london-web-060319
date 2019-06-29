# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1=Artist.create(name:"Billy", bio:"loves the guitar")
artist2=Artist.create(name:"Bob", bio:"loves the piano")
artist3=Artist.create(name:"Daniele", bio:"fun")

genre1=Genre.create(name:"rock")
genre2=Genre.create(name:"pop")
genre3=Genre.create(name:"hip hop")

Song.create(name:"I love you", artist_id:artist1.id, genre_id:genre1.id)
Song.create(name:"I hate you", artist_id:artist2.id, genre_id:genre2.id)
Song.create(name:"I love to hate you", artist_id:artist3.id, genre_id:genre3.id)