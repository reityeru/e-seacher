class MainUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :email, format: { with: /\A\S+@\S+\.\S+\z/ }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, on: :create
    validates :password_confirmation, on: :create
    validates :gender
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }

    with_options format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ } do
      validates :last_name
      validates :first_name
    end

    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :last_name_kana
      validates :first_name_kana
    end
  end
  validates :profile, length: { maximum: 300 }

  has_many :main_user_tweets, dependent: :destroy
  has_many :main_user_comments, dependent: :destroy
end
