class Api::V1::QtuoteController < ApplicationController
  skip_before_action :authenticate_user!, only: [:get_quote]

  def get_quote
    render :json => Quote.get_quote_of_the_day(params[:catagory])
  end
end
