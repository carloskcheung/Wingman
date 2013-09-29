class VerificationsController < ApplicationController

before_filter :get_message
 
  def create
    @message.update_attribute(:verified, true)
    # You could send another message acknowledging the verificaton
    head :ok
  end
 
  private
  def get_message
    unless @message = Message.find_by_phone(params['From'])
      head :not_found
    end
  end
 
end