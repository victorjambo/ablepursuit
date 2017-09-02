class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	after_filter :prepare_unobtrusive_flash

	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || rails_admin_path
	end

end
