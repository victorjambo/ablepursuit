class Profile < ApplicationRecord
	belongs_to :user

	# Paperclip
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.jpg"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	# Impressionist
	is_impressionable

	# Tagging
	acts_as_taggable

	#search
	def self.Search(search)
		if search && search != ''
			where(["title LIKE ?", "%#{search}%"])
		else
			all.order("created_at DESC")
		end
	end
  
end
