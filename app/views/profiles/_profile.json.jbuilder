json.extract! profile, :id, :title, :url, :content, :preview, :created_at, :updated_at
json.url profile_url(profile, format: :json)
