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

get '/music/:id' do 
  @musics = Music.find params[:id]
  erb :'music/show'
end

get '/music/author/:author' do 
  @musics = Music.where(author: params[:author])
  erb :'music/author'
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