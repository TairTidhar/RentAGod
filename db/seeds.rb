# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
God.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

powers = ["ruby on rails", "css"]
powers.each do |name|
	Power.create(name: name)
end


jl = User.create!(name: 'JL', email: 'jean.luc@hotmail.fr', password: 'password')

buddha = God.new(name: 'Buddha', location: 'Lhassa', description: 'Gautama Buddha, also known as Siddhārtha Gautama, Shakyamuni Buddha, or simply the Buddha, after the title of Buddha, was a monk, mendicant, and sage, on whose teachings Buddhism was founded.', price: 50)
buddha.user = jl
buddha.remote_photo_url = "https://images.unsplash.com/photo-1522850888141-ed8cb70c9c4d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5a340b46c4f4db95174cfe57d2730f72&auto=format&fit=crop&w=634&q=80"
buddha.save

allah = God.new(name: 'Allah', location: 'Mecca', description: 'Muslims believe in the one Creator of the Universe, referring to Him as “Allah” which is the Arabic word for “God”. Muslims worldwide, even English-speaking Muslims, frequently use the Arabic word “Allah” because Arabic is the language of the Qur’an.', price: 50)
allah.user = jl
allah.remote_photo_url = "https://images.unsplash.com/photo-1539077036699-681b21c54c31?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b71897a1c5f86890de32d8115e72a7d3&auto=format&fit=crop&w=1081&q=80"
allah.save

jesus = God.new(name: 'Jesus', location: 'Jerusalem', description: '(c. 4 BC – c. AD 30 / 33), also referred to as Jesus of Nazareth and Jesus Christ, was a first-century Jewish preacher and religious leader. He is the central figure of Christianity. Most Christians believe he is the incarnation of God the Son and the awaited Messiah (Christ) prophesied in the Old Testament.', price: 50)
jesus.user = jl
jesus.remote_photo_url = "https://images.unsplash.com/photo-1510333337682-fdd0eba357a4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ab63f2259433a9d6feb375594455ea4b&auto=format&fit=crop&w=675&q=80"
jesus.save

zeus = God.new(name: 'Zeus', location: 'Athens', description: 'Is the sky and thunder god in ancient Greek religion, who rules as king of the gods of Mount Olympus. His name is cognate with the first element of his Roman equivalent Jupiter. His mythologies and powers are similar, though not identical, to those of Indo-European deities such as Indra, Jupiter, Perkūnas, Perun, Thor, and Odin', price: 50)
zeus.user = jl
zeus.remote_photo_url = "https://images.unsplash.com/photo-1513728731559-6bf2c0c931f9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2f97134d69b26b29b46305bf92911da6&auto=format&fit=crop&w=1050&q=80"
zeus.save

odin = God.new(name: 'Odin', location: 'Ireland', description: 'In Norse mythology, from which stems most surviving information about the god, Odin is associated with wisdom, healing, death, royalty, the gallows, knowledge, battle, sorcery, poetry, frenzy, and the runic alphabet, and is the husband of the goddess Frigg. In wider Germanic mythology and paganism, Odin was known in Old English as Wōden, in Old Saxon as Wōdan, and in Old High German as Wuotan or Wōtan, all stemming from the reconstructed Proto-Germanic theonym *wōđanaz.', price: 50)
odin.user = jl
odin.remote_photo_url = "https://images.unsplash.com/photo-1527346944637-89b61119597c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=993da548c4486f6e1de422fca49f04df&auto=format&fit=crop&w=967&q=80"
odin.save

yhwh = God.new(name: 'YHWH', location: 'Jerusalem', description: 'Yahweh, the god of the Israelites, whose name was revealed to Moses as four Hebrew consonants (YHWH) called the tetragrammaton.', price: 50)
yhwh.user = jl
yhwh.remote_photo_url = "https://images.unsplash.com/photo-1519074827740-07b432aab7b5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=65636208efae44c943df0240882e2962&auto=format&fit=crop&w=634&q=80"
yhwh.save

ganesha = God.new(name: 'Ganesha', location: 'New Delhi', description: 'Ganesha (Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati, Vinayaka, Pillaiyar and Binayak, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka, Thailand, Bali (Indonesia), Bangladesh and Nepal.[5] Hindu denominations worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]', price: 50)
ganesha.user = jl
ganesha.remote_photo_url = "https://images.unsplash.com/photo-1534792030164-245f505f9cde?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=91469597bfb035a43d2111fa066e34b2&auto=format&fit=crop&w=1050&q=80"
ganesha.save

