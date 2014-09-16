class OwnerMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.owner_mailer.new_order_alert.subject
  #
  def new_order_alert(order, jason_pic)
    @greeting = "Hi"
    @order = order
    @jason_pic = jason_pic

    mail to: "michaelryanhughes@gmail.com", subject: "New Order ##{order.id}"
    #mail to: "somersetgreene@gmail.com", subject: "New Order ##{orcer.id}, is ready to ship."
  end
end
