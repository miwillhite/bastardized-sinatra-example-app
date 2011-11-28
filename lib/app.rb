%w[rubygems sinatra/base].each { |dep| require dep }


class AppFace < Sinatra::Base
  get '/' do
    File.read File.join('public', 'index.html')
  end
end
