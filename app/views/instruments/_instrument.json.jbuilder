json.extract! instrument, :id, :name, :type_name, :price, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
