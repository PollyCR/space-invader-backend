class ApiController < ApplicationController

    def getAPOD 
        response = JSON.parse(RestClient.get("https://api.nasa.gov/planetary/apod?api_key=dDeY37wmDM7xBJg1VaHRAb0dFVHdgDUHQhPzdORm"))
        render json: response
    end

    def getLaunch 
        response = JSON.parse(RestClient.get("https://launchlibrary.net/1.3/launch/next/1"))
        render json: response
    end

    def getAsteroid 
        timeNow = Time.now.strftime("%Y-%m-%d")
        response = JSON.parse(RestClient.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=#{timeNow}&api_key=dDeY37wmDM7xBJg1VaHRAb0dFVHdgDUHQhPzdORm"))
        render json: response
    end 
end
