class MessagesController < ApplicationController

	def index
		@messages = Message.all.reverse
	end

	def new
    @message = Message.new
  end
 
  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_path
     
     # Instantiate a Twilio client
      client = Twilio::REST::Client.new(TWILIO_CONFIG['sid'], TWILIO_CONFIG['token'])
      
      # Create and send an SMS message
      client.account.sms.messages.create(
        from: TWILIO_CONFIG['from'],
        to: @message.phone,
        body: @message.text
      )
    else
      render :new
    end
  end
 
end