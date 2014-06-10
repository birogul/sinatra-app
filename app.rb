require 'sinatra'

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end
get '/hi' do
code = "<%= Time.now %>"
  erb code

end


get '/render' do
erb :index

end
get '/sessions/:value' do
  "value = " << session[:value].inspect

end
get '/session/:value' do
  session[:value] = params[:value]
end
