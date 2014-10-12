require 'sinatra'



  get '/' do 
    "sinatra test works!"
  end

  get '/decision' do
    'what\'s the decision?'
  end


  get '/*' do
    "Your input is #{params[:splat]}"
  end