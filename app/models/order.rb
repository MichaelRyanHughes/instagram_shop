class Order < ActiveRecord::Base
    STATUS_PAID = "paid"
    
    def confirm_payment
      update_attribute(:payment_status, STATUS_PAID) 
    end
end
