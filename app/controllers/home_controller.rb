class HomeController < ApplicationController
	def index
		if authenticate_user!
			redirect_to(summary_records_path, :flash => { :notice => "Hola "+current_user.first_name+" !!!, que tengas muchos clientes hoy dia" })
		else
			redirect_to new_user_session_path
		end
	end
end