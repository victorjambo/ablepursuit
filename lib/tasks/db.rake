namespace :db do
	desc "populates database with random data"
	task populate: :environment do
		User.create email: "admin@pursuit.com", password: "pursuit1234"
		20.times do
			User.last.profiles.create(
				title: Faker::GameOfThrones.character,
				url: Faker::Internet.url,
				content: Faker::Lorem.paragraphs(5).join(','),
				facebook: Faker::Lorem.word,
				twitter: Faker::Lorem.word,
				instagram: Faker::Lorem.word,
				location: Faker::Address.street_address
				)
		end
	end
end
