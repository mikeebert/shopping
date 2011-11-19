class ReceiptsMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.receipts_mailer.purchase_confirmation.subject
  #
  def purchase_confirmation(order)
    @order = order
    @greeting = "Hi"
    mail(to: "#{@order.email}",
         subject: "Details for your order")
  end
end
