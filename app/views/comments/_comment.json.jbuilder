json.extract! comment, :id, :user_name, :body, :recipe, :references, :created_at, :updated_at
json.url comment_url(comment, format: :json)
