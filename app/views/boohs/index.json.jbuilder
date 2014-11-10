json.array!(@boohs) do |booh|
  json.extract! booh, :id, :title
  json.url booh_url(booh, format: :json)
end
