%w[rubygems sinatra/base].each { |dep| require dep }

class AppFace < Sinatra::Base
  
  set :root, File.expand_path('../..', __FILE__)  

  get '/' do
    File.read File.join('public', 'index.html')
  end
end
