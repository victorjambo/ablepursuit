namespace :db do
	desc "populates database with random data"
	task populate: :environment do
		Profile.destroy_all
		me = User.last
		20.times do
			me.profiles.build(
				title: Faker::Lorem.word,
				url: Faker::Internet.url,
				content: Faker::Lorem.paragraphs(5),
				preview: Faker::Lorem.sentence
				)
		end
		me.save
	end
end
