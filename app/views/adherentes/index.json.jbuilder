json.array!(@adherentes) do |adherente|
  json.extract! adherente, :nombre, :user_id
  json.url adherente_url(adherente, format: :json)
end