class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # CRUD operations for electronics
  get '/electronics' do
    electronics = Electronic.all
    electronics.to_json
  end
  
  get '/electronics/:id' do
    electronic = Electronic.find(params[:id])
    electronic.to_json
  end
  
  post '/electronics' do
    electronic = Electronic.create(
      name: params[:name],
      price: params[:price],
      image: params[:image]
    )
    electronic.to_json
  end
  
  patch '/electronics/:id' do
    electronic = Electronic.find(params[:id])
    electronic.update(
      name: params[:name],
      price: params[:price],
      image: params[:image]
    )
    electronic.to_json
  end
  
  delete '/electronics/:id' do
    electronic = Electronic.find(params[:id])
    electronic.destroy
    electronic.to_json
  end
end
