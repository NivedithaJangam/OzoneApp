class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url ='http://localhost:8085/login/getAll'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end
