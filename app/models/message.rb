class Message < ActiveRecord::Base
	attr_accessible :text, :phone
 
  validates :text, presence: true, length: { maximum: 60 }
  validates :phone, presence: true, :phone_number => {:ten_digits => true, :seven_digits => true, :message => "Phone number must be either seven or ten digits in length."}
end