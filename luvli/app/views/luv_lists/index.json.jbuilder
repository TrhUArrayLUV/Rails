json.array!(@luv_lists) do |luv_list|
  json.extract! luv_list, :id, :title, :description
  json.url luv_list_url(luv_list, format: :json)
end
