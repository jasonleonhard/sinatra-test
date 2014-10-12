require 'sinatra'

# http://localhost:4567/help.html
get '/help.html' do    # or... get 'help.html' do
  'Documentation for Prisoner\'s Dilemma'
end
=begin
  Prisoner's Dilehma

  B (silent)  B (betrays)
  A (silent)  1 year  A : 3 years 
  B : Free
  A (betrays) A : Free 
  B : 3 years 2 years
=end


# http://localhost:4567/decision
=begin
get '/decision' do
  erb :decision
end
=end
# A's decision:
# B's decision:
# viewing page source shows a html table...


configure do
  enable :sessions
end


# http://localhost:4567/set
get '/set' do
  session[:now] = Time.now
  "Current session value is #{session[:now]}."
end


# http://localhost:4567/fetch
get '/fetch' do
  session[:now] = Time.now
  "Session value is #{session[:now]} and the current time is #{Time.now}."
end


# http://localhost:4567/clear
get '/clear' do
  session.clear
  redirect 'fetch'
end


before do
  @heading = "Prisoner's Dilemma"
end



# http://localhost:4567/decision
get '/decision' do
  @a_decision = "silent"
  @b_decision = "betray"
  erb :decision
end
# Prisoner's Dilemma

# A's decision: silent
# B's decision: betray





# FULL IMPLIMETATION OF PRISONER'S DELEMMA
# http://localhost:4567/decision/type
  # http://localhost:4567/decision/silent
  # http://localhost:4567/decision/betray
before do
  @heading = "Prisoner's Dilemma"
  @decision = ["silent", "betray"]
end


get '/decision/:type' do
  @a_decision = params[:type].to_s    # user input
  @b_decision = @decision.sample.to_s # confidential and random , by computer

  if @a_decision == @b_decision
    if @a_decision == 'silent'
      @result = 'Both get 1 year'
    else
      @result = 'Both get 3 years'
    end
  else
    if @a_decision == 'silent'
      @result = 'A gets 3 years, B is free!'
    else
      @result = 'A is free, B gets 3 years!'
    end
  end

  erb :decision
end




















