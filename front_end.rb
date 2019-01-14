require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher.rb'

get '/' do
  cipher = ""
  code = ""
  text = params["input_text"]
  shift = params["shift"]
  code = params["code"]
  if text.size > 0 && shift.size > 0 && %w{encode decode}.include?(code) then
      shift = code == "encode" ? shift.to_i : -shift.to_i
      cipher = caesar_cipher(text,shift)
  end
  erb :index, locals: {cipher:cipher, code:code}
end
