# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Like.destroy_all
# Comment.destroy_all
# Gossip.destroy_all
# Tag.destroy_all

Like.destroy_all
Comment.destroy_all

# Supprimer les liens entre les gossips et les tags (gossip_tags)
GossipTag.destroy_all # Assurez-vous que GossipTag est le modèle approprié pour les associations.

# Ensuite, supprimez les gossips et les tags
Gossip.destroy_all
Tag.destroy_all
User.destroy_all
City.destroy_all
# PrivateMessage.destroy_all

# b) LES USERS
city1 = City.create(name: 'Paris', zip_code: '75000')
city2 = City.create(name: 'Lyon', zip_code: '69000')
city3 = City.create(name: 'Marseille', zip_code: '13000')
city4 = City.create(name: 'Bordeaux', zip_code: '33000')
city5 = City.create(name: 'Nantes', zip_code: '44000')
city6 = City.create(name: 'Toulouse', zip_code: '31000')
city7 = City.create(name: 'Nice', zip_code: '06000')
city8 = City.create(name: 'Lille', zip_code: '59000')
city9 = City.create(name: 'Strasbourg', zip_code: '67000')
city10 = City.create(name: 'Rennes', zip_code: '35000')

u1 = User.create(first_name: 'Alice', last_name: 'Durand', description: 'A user from Paris', email: 'alice@example.com', age: 25, city: city1)
u2 = User.create(first_name: 'Bob', last_name: 'Martin', description: 'A user from Lyon', email: 'bob@example.com', age: 30, city: city2)
u3 = User.create(first_name: 'Charlie', last_name: 'Lemoine', description: 'A user from Marseille', email: 'charlie@example.com', age: 35, city: city3)
u4 = User.create(first_name: 'David', last_name: 'Moreau', description: 'A user from Bordeaux', email: 'david@example.com', age: 28, city: city4)
u5 = User.create(first_name: 'Eve', last_name: 'Roux', description: 'A user from Nantes', email: 'eve@example.com', age: 22, city: city5)
u6 = User.create(first_name: 'Frank', last_name: 'Garnier', description: 'A user from Toulouse', email: 'frank@example.com', age: 27, city: city6)
u7 = User.create(first_name: 'Grace', last_name: 'Bernard', description: 'A user from Nice', email: 'grace@example.com', age: 33, city: city7)
u8 = User.create(first_name: 'Hank', last_name: 'Simon', description: 'A user from Lille', email: 'hank@example.com', age: 29, city: city8)
u9 = User.create(first_name: 'Ivy', last_name: 'Vidal', description: 'A user from Strasbourg', email: 'ivy@example.com', age: 31, city: city9)
u10 = User.create(first_name: 'Jack', last_name: 'Lefebvre', description: 'A user from Rennes', email: 'jack@example.com', age: 24, city: city10)

# d) LES GOSSIPS
g1 = Gossip.create(title: 'Gossip 1', content: 'This is the first gossip', user: u1)
g2 = Gossip.create(title: 'Gossip 2', content: 'This is the second gossip', user: u2)
g3 = Gossip.create(title: 'Gossip 3', content: 'This is the third gossip', user: u3)
g4 = Gossip.create(title: 'Gossip 4', content: 'This is the fourth gossip', user: u4)
g5 = Gossip.create(title: 'Gossip 5', content: 'This is the fifth gossip', user: u5)
g6 = Gossip.create(title: 'Gossip 6', content: 'This is the sixth gossip', user: u6)
g7 = Gossip.create(title: 'Gossip 7', content: 'This is the seventh gossip', user: u7)
g8 = Gossip.create(title: 'Gossip 8', content: 'This is the eighth gossip', user: u8)
g9 = Gossip.create(title: 'Gossip 9', content: 'This is the ninth gossip', user: u9)
g10 = Gossip.create(title: 'Gossip 10', content: 'This is the tenth gossip', user: u10)

# e) LES TAGS
tag1 = Tag.create(title: '#fun')
tag2 = Tag.create(title: '#scandal')
tag3 = Tag.create(title: '#drama')
tag4 = Tag.create(title: '#romance')
tag5 = Tag.create(title: '#mystery')
tag6 = Tag.create(title: '#comedy')
tag7 = Tag.create(title: '#bromance')
tag8 = Tag.create(title: '#action')
tag9 = Tag.create(title: '#thriller')
tag10 = Tag.create(title: '#adventure')

# Linking gossips to tags
g1.tags << tag1
g2.tags << tag2
g3.tags << tag3
g4.tags << tag4
g5.tags << tag5
g6.tags << tag6
g7.tags << tag7
g8.tags << tag8
g9.tags << tag9
g10.tags << tag10

# g) LES COMMENTAIRES
comment1 = Comment.create(content: 'Great gossip!', gossip: g1, user: u5)
comment2 = Comment.create(content: 'Interesting story!', gossip: g2, user: u6)
comment3 = Comment.create(content: 'I don’t believe it.', gossip: g3, user: u7)
comment4 = Comment.create(content: 'I don’t believe itttttt.', gossip: g3, user: u7)

# h) LES LIKES
Like.create(gossip: g1, comment: comment1)
Like.create(gossip: g2, comment: comment2)
Like.create(gossip: g3, comment: comment3)
Like.create(gossip: g4, comment: comment4)
