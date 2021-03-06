class ShopUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :shop_name
    validates :email, format: { with: /\A\S+@\S+\.\S+\z/ }
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :address
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, on: :create
    validates :password_confirmation, on: :create
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end
  validates :profile, length: { maximum: 300 }

  belongs_to :prefecture
  belongs_to :city
  has_many :shop_user_tweets, dependent: :destroy
  has_many :shop_user_payment_types, dependent: :destroy
  has_many :payment_types, through: :shop_user_payment_types
  has_many :main_user_tweets
  has_many :shop_user_comments, dependent: :destroy
end
