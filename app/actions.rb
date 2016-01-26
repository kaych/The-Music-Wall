enable :sessions

def current_user
  @current_user = User.find_by(id: session[:user_id])
end

# Homepage (Root path)
get '/' do
  erb :index
end

get '/users' do 
  @user = User.new 
  erb :'/users/index'
end

get '/users/new' do 
  @users = User.new 
  erb :'/users/new'
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

get '/music/:id/upvote' do 
  current_user.upvotes.create(
    music_id: params[:id]
    )
  redirect '/music'
end

get '/music/author/:author' do 
  @musics = Music.where(author: params[:author])
  erb :'music/author'
end

post '/music' do
  @musics = Music.new( 
    song_title: params[:song_title],
    author: params[:author],
    url: params[:url],
    user: current_user,
    upvotes: upvotes[:vote]
    )

  if @musics.save
    redirect '/music'
  else
    erb :'music/new'
  end
end

post '/users' do 
  @users = User.new(
    username: params[:username],
    password: params[:password]
    )

  if @users.save 
    session[:user_id] = @users.id 
    redirect '/music'
  else
    erb :'users/new'
  end
end

post '/users/login' do 
  @user_query = User.where('username = ? AND password = ?', params[:username], params[:password])

  if @user_query.length > 0
    session[:user_id] = @user_query.first.id 
    redirect '/music'
  else
    erb :'users/new'
  end
end

get '/users/logout' do 
  session.clear
  redirect '/users'
end

