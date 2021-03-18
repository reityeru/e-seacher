class CreateMainUserComments < ActiveRecord::Migration[6.0]
  def change
    create_table :main_user_comments do |t|
      t.text :comment, null: false
      t.references :main_user, foreign_key: true
      t.references :main_user_tweet, foreign_key: true
      t.references :shop_user_tweet, foreign_key: true
      t.timestamps
    end
  end
end
