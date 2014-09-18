class Order < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true 
    
    STATUS_PAID = "paid"
    
    def confirm_payment
      update_attribute(:payment_status, STATUS_PAID)
      send_confirmation_emails
      paid?
    end

    def paid?
      payment_status == STATUS_PAID
    end

    private

    def send_confirmation_emails
      jason_pic = Instagram.media_item(instagram_id).images.standard_resolution.url

      if paid?
        UserMailer.order_confirmation(self).deliver
        OwnerMailer.new_order_alert(self, jason_pic).deliver
      end
    end
end
