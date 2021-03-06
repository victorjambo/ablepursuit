RailsAdmin.config do |config|

  config.authorize_with do
    redirect_to main_app.new_user_session_path unless user_signed_in?
  end

  ### Popular gems integration

  ## authorization
  # config.authorize_with do
  #   redirect_to main_app.root_path unless current_user.email.include?('admin')
  # end

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.included_models << "Profile" 
  config.included_models << "User" 
  config.included_models << "Impression" 
  config.included_models << "ActsAsTaggableOn::Tag"

  config.model 'ActsAsTaggableOn::Tag' do
    label "Category" 
    label_plural "Categories"
    parent "Profile"
  end

  config.model 'Impression' do
    parent "Profile"
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
