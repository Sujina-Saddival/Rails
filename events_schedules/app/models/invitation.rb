class Invitation < ActiveRecord::Base
	belong_to :user
	belong_to :event
end
