class CreateShopUserPaymentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_user_payment_types do |t|
      t.references :shop_user,  foreign_key: true
      t.references :payment_type,     foreign_key: true
      t.timestamps
    end
  end
end
