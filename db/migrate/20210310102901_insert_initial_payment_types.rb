class InsertInitialPaymentTypes < ActiveRecord::Migration[6.0]
  def change
    payment_types = ["クレジットカード", "電子マネー", "QRコード"]
    payment_types.each do |type|
      PaymentType.create(payment_type: type)
    end
  end
end
