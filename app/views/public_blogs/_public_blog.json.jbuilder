json.extract! public_blog, :id, :comments, :primateName, :created_at, :updated_at
json.url public_blog_url(public_blog, format: :json)
