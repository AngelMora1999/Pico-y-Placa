class HomeController < ApplicationController
  def index
  end

  def question
  	plate = params[:plate]
	day = params[:day]
	hour = params[:hour]

	last_number = plate.to_s.last
	permit_hour = hour.delete(":").to_i


	if last_number == "1" || last_number == "2"
		deneid_day = "Lunes"
	elsif last_number == "3" || last_number == "4"
		deneid_day = "Martes"
	elsif last_number == "5" || last_number == "6"
		deneid_day = "Miercoles"
	elsif last_number == "7" || last_number == "8"
		deneid_day = "Jueves"
	elsif last_number == "9" || last_number == "0"
		deneid_day = "Viernes"
	end
  end
end
