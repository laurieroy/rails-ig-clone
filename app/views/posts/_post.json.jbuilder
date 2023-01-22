json.extract! post, :id, :caption, :longitutde, :latitude, :user_id, :allow_comment, :show_likes, :created_at, :updated_at
json.url post_url(post, format: :json)
