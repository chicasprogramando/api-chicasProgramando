# frozen_string_literal: true
class PrivateController < ApplicationController
    include Secured
  
    def private
      render json: {message: 'Funciona'}, status: :ok
    end
end