#Endpoints format setup
before do
  content_type'application/json' #To see perfectly in POSTMAN - in the Pretty
end

def collection_to_api(collection) #For Array
  MultiJson.drump(collection.map{|s| s.to_api})
end