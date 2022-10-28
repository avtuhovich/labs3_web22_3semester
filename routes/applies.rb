namespace '/api/v1' do
  post '/apply' do
    id = DB[:applies].insert(geek_id: params[:geeks_id], job_id: params[:job_id])

    collection_to_apo(DB[:applies].where(:id => id).all)
  end
end