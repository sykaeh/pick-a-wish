json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :list_id, :claimed_on, :claimed_by_id
  json.url item_url(item, format: :json)
end
