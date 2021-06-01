json.extract! photo, :id, :album_id, :picture, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
