class ContactMailer < ApplicationMailer
    def mailtest
        # @message = params[:message, :name, :email]
         mail(to: 'paolacgz@gmail.com', subject: "¡Nuevo mensaje para Chicas Programando!")
       end
end
