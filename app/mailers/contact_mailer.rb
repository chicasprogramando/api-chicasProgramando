class ContactMailer < ApplicationMailer

  def contact_email
    @subject = params[:subject]
    @body = params[:text]
    @email = params[:email]

    mail(from: 'contacto@chicasprogramando.com.ar', to: 'contacto@chicasprogramando.com.ar', subject: 'Contacto desde Chicas Programando', reply_to: @email)
  end
end
