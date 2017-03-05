json.extract! post, :id, :image, :title, :description, :date, :author, :created_at, :updated_at
json.url post_url(post, format: :json)
