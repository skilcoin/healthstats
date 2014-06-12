json.array!(@body_measurements) do |body_measurement|
  json.extract! body_measurement, :id, :measurementDate, :occurrence, :weight, :bodyFat
  json.url body_measurement_url(body_measurement, format: :json)
end
