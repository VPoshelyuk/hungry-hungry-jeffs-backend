# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
User.delete_all
Game.delete_all
users_name = [
  'Natalie',
  'Prince',
  'Dick',
  'Rachel',
  'Garry',
  'Jason',
  'Matt',
  'Niky',
  'Ashley'
]

users_initial = [
  'NPJ',
  'PPI',
  'DCK',
  'RAL',
  'GRR',
  'JSN',
  'MAT',
  'NIK',
  'ASH'
]

users_photos = [
    'https://drive.google.com/file/d/1tB3YnypWBO1a1eFDXUtgPedNhGuGnZgd',
    'https://drive.google.com/open?id=1M9B42RawVhAtksDugF5eKFV-0I2x-HHH',
    'https://drive.google.com/open?id=1Nu6cNrjd8JyJREu5AD77Ha1ZiZSfNPaW',
    'https://drive.google.com/open?id=1d8uoXpj5ZEIgrex_pflrAB3U2-zRbVbp',
    'https://drive.google.com/open?id=1fb-w7CmHCn8OwORZtjuHsfLJu2plozAi',
    'https://drive.google.com/open?id=1jXsxUOKzGKPbQVXzkZgQ5lMjmRYntAQO',
    'https://drive.google.com/open?id=1Raxa_4ygXUH1vqfNRQRN6RKhRlRNyg9M',
    'https://drive.google.com/open?id=1bIxkjbK08X39bImxf2qanoets9fb_QkI',
    'https://drive.google.com/open?id=1Stw7KPCY7Uya61447X1Lz9bG_oY2OwQx'
]

 
user1 = User.create(username: users_name[0], initials: users_initial[0], profile_pic_path: users_photos[0])
user2 = User.create(username: users_name[1], initials: users_initial[1], profile_pic_path: users_photos[1])
user3 = User.create(username: users_name[2], initials: users_initial[2], profile_pic_path: users_photos[2])
user4 = User.create(username: users_name[3], initials: users_initial[3], profile_pic_path: users_photos[3])
user5 = User.create(username: users_name[4], initials: users_initial[4], profile_pic_path: users_photos[4])
user6 = User.create(username: users_name[5], initials: users_initial[5], profile_pic_path: users_photos[5])
user7 = User.create(username: users_name[6], initials: users_initial[6], profile_pic_path: users_photos[6])
user8 = User.create(username: users_name[7], initials: users_initial[7], profile_pic_path: users_photos[7])
user9 = User.create(username: users_name[8], initials: users_initial[8], profile_pic_path: users_photos[8])

Game.create(level: 1,score: 400,user_id: user1.id)
Game.create(level: 6,score: 3400,user_id: user1.id)
Game.create(level: 2,score: 1400,user_id: user2.id)
Game.create(level: 7,score: 5200,user_id: user2.id)
Game.create(level: 3,score: 1900,user_id: user3.id)
Game.create(level: 5,score: 3000,user_id: user3.id)
Game.create(level: 1,score: 200,user_id: user4.id)
Game.create(level: 4,score: 2500,user_id: user5.id)
Game.create(level: 6,score: 3500,user_id: user6.id)
Game.create(level: 2,score: 1200,user_id: user7.id)
Game.create(level: 3,score: 2000,user_id: user8.id)
Game.create(level: 3,score: 2000,user_id: user9.id)
Game.create(level: 2,score: 1200,user_id: user9.id)
