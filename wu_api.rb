class WuApi
  attr_reader :zip_code, :data

  BASE_URI = "https://api.github.com/users/#{ENV['WU_API_KEY']}/"

  def initialize(user_name)
    @user_name = user_name
  end

  # def data
  #   @_data ||=  HTTParty.get("#{BASE_URI}#{feature}/q/#{zip_code}.json")
  # end
  #
  # def feature
  #   raise "Subclasses of WuAPI must define a feature method!"
  # end
end
