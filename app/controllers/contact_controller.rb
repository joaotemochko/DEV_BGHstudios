class ContactController < ApplicationController
    def create
        @name = params[:contact][:name]
        @email = params[:contact][:email]
        @tel = params[:contact][:tel]
        @message = params[:contact][:message]
        
        NotifierMailer.simple_message(@name, @email, @tel, @message).deliver_now
          flash[:success] = "Mensagem enviada com sucesso!"
          redirect_to :root
       
    end
end
