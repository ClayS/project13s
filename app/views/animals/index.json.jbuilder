json.array!(@animals) do |animal|
  json.extract! animal, :name, :age, :breed, :special_needs, :location_city, :location_state, :destination_city, :destination_state, :contact_name, :contact_phone, :contact_email, :contact_affiliation, :additional_notes
  json.url animal_url(animal, format: :json)
end
