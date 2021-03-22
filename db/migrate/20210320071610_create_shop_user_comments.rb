class CreateShopUserComments < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_user_comments do |t|
      t.text :comment, null: false
      t.references :shop_user, foreign_key: true
      t.integer :shop_usesr_tweet_commentable_id
      t.string  :shop_usesr_tweet_commentable_type
      t.timestamps
    end
    add_index :shop_user_comments, [:shop_usesr_tweet_commentable_type, :shop_usesr_tweet_commentable_id], name: 'shop_user_comments_index'
  end
end
