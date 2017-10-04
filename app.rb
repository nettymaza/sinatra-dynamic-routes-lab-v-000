require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #Reverse method
  get '/reversename/:name' do
    params[:name].reverse
  end

  #power function 2 ** 3 => 8
  get '/square/:number' do
    (params[:number].to_i ** 2 ).to_s
  end

  get '/say/:number/:phrase' do
    phrase = ''
    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"


end
