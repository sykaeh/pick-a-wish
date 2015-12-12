json.array!(@groups) do |group|
  json.extract! group, :id, :name, :public
  json.url group_url(group, format: :json)
end
