class IdeaBoxApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  not_found do
    erb :error
  end

  get '/' do
  	erb :index 
  end

  post '/' do
   	# 1. Create an idea based on the form parameters
 		# 2. Store it
  	# 3. Send us back to the index page to see all ideas
  	"Creating an IDEA!"
	end
end