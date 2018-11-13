# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
  User.destroy_all
  God.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  alex = User.create!(name: 'Alex', email: 'jean.luc@hotmail.fr', password: '*************')
  buddha = God.new(name: 'Buddha', location: 'Lhassa', description: 'Big and fat')
  buddha.user = alex
  buddha.save

# user_id: user.id, god_id: god.id,
