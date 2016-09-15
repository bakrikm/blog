class ProfileController < ApplicationController
  def index
    require "requests"

response = Requests.request("GET", "https://www.googleapis.com/books/v1/volumes?q=inauthor:dickens")

# Now you have these methods available
response.body    #=> String with the response bod
@data = JSON.parse(response.body)
  end
end
