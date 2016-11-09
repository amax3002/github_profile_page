require 'sinatra'
require 'erb'
require 'pry'
require './repository'

helpers do
  def render_template(filename)
    template = File.read(filename)
    ERB.new(template).result(binding)
  end
end

get "/" do
  @number = rand
  render_template("input.html.erb")
end


post "/repo" do
  @repo_list = Repository.new(params["username"])
  render_template("repo.html.erb")
end

post "/user_info" do
  @user_info = Repository.new(params["username"]).user_info
  render_template("repo.html.erb")
end
