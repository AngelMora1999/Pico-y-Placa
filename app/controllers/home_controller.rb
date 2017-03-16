class HomeController < ApplicationController
  def index
  end

  def question
  	plate = params[:plate]
	day = params[:day]
	hour = params[:hour]

	last_number = plate.to_s.last
	permit_hour = hour.delete(":").to_i
  end
end
