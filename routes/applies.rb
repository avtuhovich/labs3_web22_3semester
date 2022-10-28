namespace '/api/v1' do
  post '/apply' do
    id = DB[:applies].insert(geek_id: params[:geek_id], job_id: params[:job_id])

    collection_to_api(DB[:applies].where(:id => id).all)
  end
  get '/applies_read' do
    collection_to_api(Apply.read.all)
  end

  get '/applies_unread' do
    collection_to_api(Apply.unread.all)
  end
end
