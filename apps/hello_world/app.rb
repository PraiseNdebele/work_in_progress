 # ~/ixperience/apps/hello_world/app.rb
 require "sinatra"

 # get "/" do 
 #   "Hello, World"
 # end

 # get "/say_goodbye" do
 # 	"Goodbye!"
 # end

 # get "/well" do
 # 	"Nice!"
 # end

##
# get "/greet/:name/:age" do |name, age|
# 	"Hello, #{name}! You are #{age} years old."
# end 

##
# get "/" do
# 	page = "<h1> Welcome Home!</h1>"
# 	page = page+"<p> This is really good site</p>"
# 	page = page+"<p> Thanks for coming!</p>"
# 	page
# end

##
get "/:name" do |name|
	@name = name
	erb :index
end