class Api::ContactController < ApplicationController
    def new
      @message = Message.new
    end
  
    def create
      
      puts "#{params}"
    
     
      #if @message.save
        ContactMailer.mailtest.deliver_now

       #ApplicationMailer.mailtest().deliver_now!
    


        # flash[:success] = t('flash.mes.success')
        # redirect_to root_path
      # else
        # flash.now[:error] = t('flash.order.error_html')
        # render :new
      #end
    end
  
    private
  
    def order_params
      params.require(:message).permit(:name, :email, :descripcion)
    end
  end
  
  