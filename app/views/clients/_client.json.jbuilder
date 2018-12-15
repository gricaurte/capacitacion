json.extract! client, :id, :name, :last_name, :gender, :card_id, :id_type, :created_at, :updated_at
json.url client_url(client, format: :json)
