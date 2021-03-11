class CreateMainUserTweetPaymentTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :main_user_tweet_payment_types do |t|
      t.references :main_user_tweet,  foreign_key: true
      t.references :payment_type,     foreign_key: true
      t.timestamps
    end
  end
end
