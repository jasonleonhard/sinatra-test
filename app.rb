require 'sinatra'

# must restart server each time...
# http://localhost:4567
  get '/' do 
    "sinatra test works!"
  end
#sinatra test works!


# http://localhost:4567/decision
=begin
  get '/decision' do
    'what\'s the decision?'
  end
=end
# what's the decision?


# http://localhost:4567/hi
=begin

  get '/:decision' do
    "Your input is #{params[:decision]}"
  end  
=end

# Your input is hi


# http://localhost:4567/somethingHere
=begin
  get '/*' do
    "Your input is #{params[:splat]}"
  end
=end
# Your input is ["somethingHere"]


=begin
# http://localhost:4567/say/john/to/doe
  get '/say/*/to/*' do
    "Your input is #{params[:splat]}"
  end
=end
# Your input is ["john", "doe"]


# http://localhost:4567/say/john/to/doe
  get '/say/*/to/*' do |user1, user2|
    "Your input is #{user1} and #{user2}"
  end
# Your input is john and doe


# http://localhost:4567/say/jane/doe
# http://localhost:4567/say/jane
  get '/user/:first/?:last?' do
    "Hello #{params[:first]} #{params[:last]} !!"
  end
# Hello jane doe !!
# Hello jane !!


# http://localhost:4567
  get '/sin' do
    redirect 'http://sinatrarb.com', 301
  end
# 


# http://localhost:4567
  get '' do
    ""
  end
# 


# http://localhost:4567
  get '' do
  end
# 















