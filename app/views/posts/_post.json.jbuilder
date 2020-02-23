json.extract! post, :id, :name, :age, :body, :consent, :created_at, :updated_at
json.url post_url(post, format: :json)
