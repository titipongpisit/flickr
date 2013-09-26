get '/' do
  @users = User.all
  erb :index
end

get '/new' do 
  erb :new
end 

get '/bird' do
  @user_bird = User.find(1)
  erb :bird 
end 

post '/' do 
  puts request.body.read 
  user = User.new(params[:user])
  if user.save 
    redirect to '/'
  else 
    erb :new
  end 
end 
