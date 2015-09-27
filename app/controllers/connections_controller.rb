class ConnectionsController < ApplicationController
  def create
  	connection = current_user.connections.create_from_omniauth(auth_hash)
  	if connection.save
  		redirect_to dashboard_path, notice: "Connection created!"
  	else
  		redirect_to dashboard_path, notice: "Something went wrong"
  	end
  end

  def destroy
  end

  private

  def auth_hash
  	request.env['omniauth.auth']
  end
end
