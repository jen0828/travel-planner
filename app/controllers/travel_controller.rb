class TravelController < ApplicationController
  def index
  end

  def search
    countries = find_country(params[:country])

    unless countries
      flash[:alert] = 'country not found'
      return render action: :index
  end
end