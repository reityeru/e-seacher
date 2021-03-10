class ShopUserPaymentType < ApplicationRecord
  belongs_to :shop_user
  belongs_to :payment_type
end
