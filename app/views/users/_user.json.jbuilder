json.extract! user, :id, :firstname, :lastname, :email, :dob, :user_id, :created_at, :updated_at
json.url user_url(user, format: :json)
