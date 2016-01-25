# Homepage (Root path)
get '/' do
  erb :index
end

get '/music' do
  @musics = Music.all 
  erb :'/music/index'
end

get '/music/new' do 
  @musics = Music.new 
  erb :'music/new'
end

post '/music' do 
    @musics = Music.new( 
      song_title: params[:song_title],
      author: params[:author],
      url: params[:url]
      )

  if @musics.save
    redirect '/music'
  else
    erb :'music/new'
  end
end