# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Assignment.destroy_all
Task.destroy_all
Invite.destroy_all
User.destroy_all
Event.destroy_all

jordan = User.create(first_name: 'Jordan', last_name: 'Martin', username:'jordan', city:'Brooklyn', state:'NY')
mckenzie = User.create(first_name: 'McKenzie', last_name: 'Fiege', username:'mckenziefiege', city:'Brooklyn', state:'NY')

movie_night = Event.create(name:'MOVIE NIGHT', date:'2018-11-13 18:30:00 +0200', description:'Come hang out and watch a movie. There will be (vegan) snacks!', host_id: jordan.id, location:'81 Prospect Street, 3rd Floor, Brookly, NY 11201')
wine_night = Event.create(name:'Wine and Design', date:'2018-11-15 18:30:00 +0200', description:'Come hang out, paint, and drink wine. There will be vegan snacks!', host_id: mckenzie.id, location:'81 Prospect Street, 3rd Floor, Brookly, NY 11201')


jordan_movie_invite = Invite.create(user: jordan, event: movie_night, status: true)
mckenzie_movie_invite = Invite.create(user: mckenzie, event: movie_night, status: true)
jordan_wine_invite = Invite.create(user: jordan, event: wine_night, status: true)
mckenzie_wine_invite = Invite.create(user: mckenzie, event: wine_night, status: true)
