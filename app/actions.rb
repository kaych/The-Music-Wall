# Homepage (Root path)
get '/' do
  erb :index
end

get '/music' do
  @musics = Music.all 
  erb :'/music/index'
end

get '/music/new' do 
  @musics = Music.create 
  erb :'music/new'
end
