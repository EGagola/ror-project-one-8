json.extract! food, :id, :name, :category, :price, :description, :vegetarian, :outer_id, :created_at, :updated_at
json.url food_url(food, format: :json)
