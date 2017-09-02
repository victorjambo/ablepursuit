class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # change to pretty urls
	# test title.parameterize in rails console to see how it works
	#def to_param
	#	"#{id}-#{title.parameterize}"		
	#end
end
