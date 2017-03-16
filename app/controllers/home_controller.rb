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
		if deneid_day == day
			if (permit_hour >= 700 && permit_hour <= 930) || (permit_hour >= 1600 && permit_hour <= 1930)
				@failed = "Mala suerte!, No puedes salir en tu coche a esta hora"
			else
				@success = "Enhorabuena!, Puedes salir en tu coche"
			end
		else
			@success = "Enhorabuena!, Puedes salir en tu coche"
		end
	elsif last_number == "3" || last_number == "4"
		deneid_day = "Martes"
		if deneid_day == day
			if (permit_hour >= 700 && permit_hour <= 930) || (permit_hour >= 1600 && permit_hour <= 1930)
				@failed = "Mala suerte!, No puedes salir en tu coche a esta hora"
			else
				@success = "Enhorabuena!, Puedes salir en tu coche"
			end
		else
			@success = "Enhorabuena!, Puedes salir en tu coche"
		end
	elsif last_number == "5" || last_number == "6"
		deneid_day = "Miercoles"
		if deneid_day == day
			if (permit_hour >= 700 && permit_hour <= 930) || (permit_hour >= 1600 && permit_hour <= 1930)
				@failed = "Mala suerte!, No puedes salir en tu coche a esta hora"
			else
				@success = "Enhorabuena!, Puedes salir en tu coche"
			end
		else
			@success = "Enhorabuena!, Puedes salir en tu coche"
		end
	elsif last_number == "7" || last_number == "8"
		deneid_day = "Jueves"
		if deneid_day == day
			if (permit_hour >= 700 && permit_hour <= 930) || (permit_hour >= 1600 && permit_hour <= 1930)
				@failed = "Mala suerte!, No puedes salir en tu coche a esta hora"
			else
				@success = "Enhorabuena!, Puedes salir en tu coche"
			end
		else
			@success = "Enhorabuena!, Puedes salir en tu coche"
		end
	elsif last_number == "9" || last_number == "0"
		deneid_day = "Viernes"
		if deneid_day == day
			if (permit_hour >= 700 && permit_hour <= 930) || (permit_hour >= 1600 && permit_hour <= 1930)
				@failed = "Mala suerte!, No puedes salir en tu coche a esta hora"
			else
				@success = "Enhorabuena!, Puedes salir en tu coche"
			end
		else
			@success = "Enhorabuena!, Puedes salir en tu coche"
		end
	else
		redirect_to root_path
	end
  end
end
