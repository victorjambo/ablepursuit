json.extract! profile, :id, :title, :url, :content, :twitter, :facebook, :location, :instagram, :url, :created_at, :updated_at, :tagline, :industry
json.url profile_url(profile, format: :json)
