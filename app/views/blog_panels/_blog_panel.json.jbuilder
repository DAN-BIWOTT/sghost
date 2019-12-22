json.extract! blog_panel, :id, :btitle, :bimage, :bmessage, :created_at, :updated_at
json.url blog_panel_url(blog_panel, format: :json)
