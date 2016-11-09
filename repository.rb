require 'httparty'
require 'bundler/setup'
require 'pry'

class Repository

  attr_reader :data, :username, :user_info

  BASE_URI = "https://api.github.com/users/"
  def initialize(username)
    @username = username
  end

  def data
    @data ||= HTTParty.get("#{BASE_URI}#{username}/repos")
  end

  def user_info
    @user_info ||= HTTParty.get("#{BASE_URI}#{username}")
  end

#?access_token=b0e10c57129db361460fa0bdea2ad75bed7903a1
end
