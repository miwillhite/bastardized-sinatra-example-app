%w[rubygems sinatra/base].each { |dep| require dep }

class AppFace < Sinatra::Base
  
  set :public_folder, File.expand_path(File.join(File.dirname(__FILE__), 'public'))

  get '/' do
    File.read File.join('public', 'index.html')
  end
end
