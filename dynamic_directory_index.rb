require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @files = Dir.entries("public")
  @files = @files.reject do |f|
    f[0] == "."
  end.sort
  @files.reverse! if params[:sort] == "desc"
  erb :home
end
