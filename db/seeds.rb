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

jordan = User.create(first_name: 'Jordan', last_name: 'Martin', username:'jordan', city:'Brooklyn', state:'NY', password: 'password', image: 'https://pbs.twimg.com/profile_images/733186212177936388/Ke3m8oMt_400x400.jpg')
mckenzie = User.create(first_name: 'McKenzie', last_name: 'Fiege', username:'mckenziefiege', city:'Brooklyn', state:'NY', password: 'password', image: 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fscontent-lga3-1.xx.fbcdn.net%2Fv%2Ft1.0-9%2F40933841_2137921602886985_329832640561545216_o.jpg%3F_nc_cat%3D106%26_nc_ht%3Dscontent-lga3-1.xx%26oh%3D2f49f5ffb0e259967b6693ea3a3ad51c%26oe%3D5C7D72E1')

movie_night = Event.create(name:'Movie Night', date:'2018-11-13 18:30:00 -0500', description:'Come hang out and watch a movie. There will be (vegan) snacks!', host_id: jordan.id, location:'81 Prospect Street, 3rd Floor, Brooklyn, NY 11201', image: 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1515089836358-4c06e3b50c80%3Fixlib%3Drb-0.3.5%26ixid%3DeyJhcHBfaWQiOjEyMDd9%26s%3Dcdc6dd40c2c54e6a946a6c77858ccebf%26auto%3Dformat%26fit%3Dcrop%26w%3D1950%26q%3D80')
wine_night = Event.create(name:'Wine and Design', date:'2018-11-15 18:30:00 -0500', description:'Come hang out, paint, and drink wine. There will be vegan snacks!', host_id: mckenzie.id, location:'81 Prospect Street, 3rd Floor, Brooklyn, NY 11201', image: 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1519671482749-fd09be7ccebf%3Fixlib%3Drb-0.3.5%26ixid%3DeyJhcHBfaWQiOjEyMDd9%26s%3D03ef5d95e65d797d58b9a29c41e2f0ea%26auto%3Dformat%26fit%3Dcrop%26w%3D1950%26q%3D80')


jordan_movie_invite = Invite.create(user: jordan, event: movie_night, status: true)
mckenzie_movie_invite = Invite.create(user: mckenzie, event: movie_night, status: true)
jordan_wine_invite = Invite.create(user: jordan, event: wine_night, status: true)
mckenzie_wine_invite = Invite.create(user: mckenzie, event: wine_night, status: true)

bring_movie = Task.create(name: "Bring a movie", invite: jordan_movie_invite)
bring_wine = Task.create(name: "Bring wine", invite: mckenzie_wine_invite)

 movie_assignment = Assignment.create(task: bring_movie, invite: mckenzie_movie_invite)
 wine_assignment = Assignment.create(task: bring_wine, invite: jordan_wine_invite)
