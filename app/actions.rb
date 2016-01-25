# Homepage (Root path)
get '/' do
  erb :index
end

get '/musics' do
  @musics = Music.all 
  erb :'/musics/index'
end
