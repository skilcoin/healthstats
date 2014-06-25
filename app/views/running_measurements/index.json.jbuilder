json.array!(@running_measurements) do |running_measurement|
  json.extract! running_measurement, :id, :distance_miles, :duration_seconds, :calories
  json.url running_measurement_url(running_measurement, format: :json)
end
