class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # change to pretty urls
	# test title.parameterize in rails console to see how it works

	# old school pretty id
	# def to_param
	# 	"#{id}-#{title.parameterize}"		
	# end
end
