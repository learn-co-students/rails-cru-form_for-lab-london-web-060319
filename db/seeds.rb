# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    a1 = Artist.create(name: 'Drake', bio: 'Rap artist from Canada')
    a2 = Artist.create(name: 'Jungle', bio: 'UK chilled electro funk band')
    a3 = Artist.create(name: 'Red Hot Chilli Peppers', bio: 'Funk rock band from LA')
    
    g1 = Genre.create(name: 'Funk Rock')
    g2 = Genre.create(name: 'Rap')
    g3 = Genre.create(name: 'Funk')

    s1 = Song.create(name: 'Hotline Bling', artist_id: 1, genre_id: 2)
    s2 = Song.create(name: 'House in LA', artist_id: 2, genre_id: 3)
    s3 = Song.create(name: 'Bicycle Song', artist_id: 3, genre_id: 1)

    