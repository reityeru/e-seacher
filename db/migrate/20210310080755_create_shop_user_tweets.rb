class CreateShopUserTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_user_tweets do |t|
      t.text :text,            null: false
      t.references :shop_user, foreign_key: true
      t.timestamps
    end
  end
end
