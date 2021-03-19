class CreateMainUserComments < ActiveRecord::Migration[6.0]
  def change
    create_table :main_user_comments do |t|
      t.text :comment, null: false
      t.references :main_user, foreign_key: true
      t.integer :main_usesr_tweet_commentable_id
      t.string  :main_usesr_tweet_commentable_type
      t.timestamps
    end

    add_index :main_user_comments, [:main_usesr_tweet_commentable_type, :main_usesr_tweet_commentable_id], unique: true, name: 'main_user_comments_index'
  end
end
