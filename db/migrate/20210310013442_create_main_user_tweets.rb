class CreateMainUserTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :main_user_tweets do |t|
      t.string :shop_name,      null: false
      t.text :text,             null: false
      t.string :prefectures,    null: false
      t.string :city,           null: false
      t.integer :genres_id,     null: false
      t.string :take_out,       null: false
      t.references :main_user,  foreign_key: true
      t.references :shop_user,  foreign_key: true
      t.timestamps
    end
  end
end
