require 'sinatra/base'
require './lib/user'


class Birthday < Sinatra::Base

  run! if app_file == $0
  enable :sessions

 get '/' do
  erb(:index)
 end

 get '/name' do
  session[:name] = params[:name]
  session[:birth_day] = params[:birth_day]
  session[:birth_month] = params[:birth_month]
  redirect '/birthday'
 end

 get '/birthday' do
  @name = session[:name]
  @birth_day = session[:birth_day]
  @birth_month = params[:birth_month]
  erb(:birthday)
 end

 
end