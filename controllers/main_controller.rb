before do
  content_type 'application/json' # To see perfectly in POSTMAN - in tab Pretty
end

def collection_to_api(collection)         # For Array
  collection.to_json
end