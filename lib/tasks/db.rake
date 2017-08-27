namespace :db do
	desc "populates database with random data"
	task populate: :environment do
		Profile.destroy_all
		me = User.last
			20.times do
				me.profiles.build(
					title: Faker::GameOfThrones.character,
					url: Faker::Internet.url,
					content: Faker::Lorem.paragraphs(5),
					facebook: Faker::Lorem.word,
					twitter: Faker::Lorem.word,
					instagram: Faker::Lorem.word,
					location: Faker::Address.street_address
					)
			end
		me.save
	end
end
