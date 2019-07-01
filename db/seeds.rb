# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([
    {name: "Bob Bobberson", bio: "Coooool"},
    {name: "Bert Bertusson", bio: "muzik"},
    {name: "Alf", bio: "google.com"}
    ])

genres = Genre.create([
    {name: "Rock"},
    {name: "Pop"},
    {name: "Bad"}
    ])

    
10.times do
    Song.create(name:rand(0..10).to_s, artist: artists.sample, genre: genres.sample)
end