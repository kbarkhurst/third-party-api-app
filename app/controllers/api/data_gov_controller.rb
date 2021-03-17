class Api::DataGovController < ApplicationController
  def index
    response = HTTP.get("https://developer.nrel.gov/api/#{params[:search]}/v1.json?limit=1&api_key=#{Rails.application.credentials.data_gov[:api_key]}")
    render json: response.parse
  end

  # https://developer.nrel.gov/api/alt-fuel-stations/v1.json?limit=1&api_key=KKkVDuWmJMr495vQKPSYjncAR2kO1VDKVEujHTDf

end
