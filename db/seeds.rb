# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
God.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jl = User.create!(name: 'JL', email: 'jean.luc@hotmail.fr', password: 'password')

buddha = God.new(name: 'Buddha', location: 'Lhassa', description: 'Big and fat', price: 10)
buddha.user = jl
buddha.remote_photo_url = "https://images.unsplash.com/photo-1522850888141-ed8cb70c9c4d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5a340b46c4f4db95174cfe57d2730f72&auto=format&fit=crop&w=634&q=80"
buddha.save

allah = God.new(name: 'Allah', location: 'Mecca', description: 'Explosive', price: 12)
allah.user = jl
allah.remote_photo_url = "https://images.unsplash.com/photo-1539077036699-681b21c54c31?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b71897a1c5f86890de32d8115e72a7d3&auto=format&fit=crop&w=1081&q=80"
allah.save

jesus = God.new(name: 'Jesus', location: 'Jerusalem', description: 'Screwed', price: 7)
jesus.user = jl
jesus.remote_photo_url = "https://images.unsplash.com/photo-1510333337682-fdd0eba357a4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ab63f2259433a9d6feb375594455ea4b&auto=format&fit=crop&w=675&q=80"
jesus.save

zeus = God.new(name: 'Zeus', location: 'Athen', description: 'Really cloudy', price: 7)
zeus.user = jl
zeus.remote_photo_url = "https://images.unsplash.com/photo-1513728731559-6bf2c0c931f9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2f97134d69b26b29b46305bf92911da6&auto=format&fit=crop&w=1050&q=80"
zeus.save

odin = God.new(name: 'Odin', location: 'Island', description: 'A lot of boring qualities', price: 70)
odin.user = jl
odin.remote_photo_url = "https://images.unsplash.com/photo-1527346944637-89b61119597c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=993da548c4486f6e1de422fca49f04df&auto=format&fit=crop&w=967&q=80"
odin.save

yhwh = God.new(name: 'YHWH', location: 'Jerusalem', description: 'Sur la vie serge!', price: 10000000)
yhwh.user = jl
yhwh.remote_photo_url = "https://images.unsplash.com/photo-1519074827740-07b432aab7b5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=65636208efae44c943df0240882e2962&auto=format&fit=crop&w=634&q=80"
yhwh.save

ganesha = God.new(name: 'Ganesha', location: 'New Delhi', description: 'Spicy', price: 43)
ganesha.user = jl
ganesha.remote_photo_url = "https://images.unsplash.com/photo-1534792030164-245f505f9cde?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=91469597bfb035a43d2111fa066e34b2&auto=format&fit=crop&w=1050&q=80"
ganesha.save

