class CitiesController < ApplicationController
  def index
    @q = City.search(params[:q])
    @cities = @q.result(distinct: true).order(:id)
  end
end
