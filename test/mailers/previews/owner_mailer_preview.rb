# Preview all emails at http://localhost:3000/rails/mailers/owner_mailer
class OwnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/owner_mailer/new_order_alert
  def new_order_alert
    OwnerMailer.new_order_alert
  end

end
