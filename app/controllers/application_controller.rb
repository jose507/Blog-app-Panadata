class ApplicationController < ActionController::Base
    before_action :authenticate_user! #Autentificacion antes de inciar session
end