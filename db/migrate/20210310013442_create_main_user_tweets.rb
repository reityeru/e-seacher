class CreateMainUserTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :main_user_tweets do |t|
      t.string :shop_name,      null: false
      t.text :text,             null: false
      t.integer :prefecture_id, null: false
      t.integer :city_id,       null: false
      t.integer :genre_id,      null: false
      t.string :take_out
      t.references :main_user,  foreign_key: true
      t.references :shop_user,  foreign_key: true
      t.timestamps
    end
  end
end
