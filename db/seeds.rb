# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

ween = Artist.create(name: "Ween", bio: "Totally whacked out genre-benders")
new_o = Artist.create(name: "New Order", bio: "See: Joy Division")

a_p = Genre.create(name: "Alternative-Psych")
n_w = Genre.create(name: "New Wave")

Song.create(name: "Mutilated Lips", artist_id: ween.id, genre_id: a_p.id)
Song.create(name: "It's Gonna Be (Alright)", artist_id: ween.id, genre_id: a_p.id)
Song.create(name: "Age of Consent", artist_id: new_o.id, genre_id: n_w.id)
Song.create(name: "Your Silent Face", artist_id: new_o.id, genre_id: n_w.id)


