require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2 ).to_s
  end

  get '/say/:number/:phrase' do
    phrase = ''
    paramas[:number].times do
      phrase += params[:phrase]
    end
  end

end
