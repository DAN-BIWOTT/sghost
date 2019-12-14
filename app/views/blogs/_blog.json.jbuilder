json.extract! blog, :id, :posts, :comments, :created_at, :updated_at
json.url blog_url(blog, format: :json)
