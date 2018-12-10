json.extract! review, :id, :review_text, :user_id, :latitude, :longitude, :created_at, :updated_at
json.url review_url(review, format: :json)
