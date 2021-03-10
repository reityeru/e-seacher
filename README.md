# テーブル設計

## main_usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| encrypted_password | string  | null: false               |
| email              | string  | null: false, unique: true |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| last_name_kana     | string  | null: false               |
| first_name_kana    | string  | null: false               |
| birthday           | date    | null: false               |
| gender             | string  | null: false               |
| phone_number       | string  | null: false               |
| profile            | text    |                           |


### Association

- has_many :main_user_tweets
- has_many :goods
- has_many :likes
- has_many :main_user_comments

## shop_usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| shop_name          | string  | null: false               |
| encrypted_password | string  | null: false               |
| email              | string  | null: false, unique: true |
| phone_number       | string  | null: false               |
| postal_code        | string  | null: false               |
| prefectures        | string  | null: false               |
| city               | string  | null: false               |
| address            | string  | null: false               |
| building_name      | string  |                           |
| profile            | text    |                           |
| shop_link          | string  |                           |

### Association

- has_many :shop_user_tweets
- has_many :payment_types, through: :shop_user_payment_type
- has_many :shop_user_payment_types
- has_many :main_user_tweets
- has_many :shop_user_comments


## main_user_tweetsテーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | ------------------------------ |
| shop_name      | string      | null: false                    |
| text           | text        | null: false                    |
| prefectures    | string      | null: false                    |
| city           | string      | null: false                    |
| genres_id      | integer     | null: false                    |
| take_out       | string      | null: false                    |
| main_user      | references  | null: false, foreign_key: true |
| shop_user      | references  | foreign_key: true              |

### Association

- belongs_to :main_user
- belongs_to :genre
- belongs_to :take_out
- belongs_to :shop_user
- belongs_to :prefecture
- belongs_to :citie
- has_many   :main_user_comments
- has_many   :shop_user_comments
- has_many   :goods
- has_many   :likes
- has_many   :payment_types, through: :main_user_tweet_payment_type
- has_many   :main_user_tweet_payment_types
- has_many   :main_user_tweet_images



## shop_user_tweetsテーブル

| Column    | Type        | Options                        |
| --------- | ----------- | ------------------------------ |
| text      | text        | null: false                    |
| shop_user | references  | null: false, foreign_key: true |

### Association

- belongs_to :shop_user
- has_many   :shop_user_comments
- has_many   :main_user_comments
- has_many   :shop_user_tweet_images



## main_user_commentsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| comment         | text       | null: false                    |
| main_user       | references | null: false, foreign_key: true |
| main_user_tweet | references | null: false, foreign_key: true |
| shop_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :main_user
- belongs_to :main_user_tweet
- belongs_to :shop_user_tweet


## shop_user_commentsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| comment         | text       | null: false                    |
| shop_user       | references | null: false, foreign_key: true |
| main_user_tweet | references | null: false, foreign_key: true |
| shop_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :shop_user
- belongs_to :main_user_tweet
- belongs_to :shop_user_tweet


## goodsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| main_user       | references | null: false, foreign_key: true |
| main_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :main_user
- belongs_to :main_user_tweet

## likesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| main_user       | references | null: false, foreign_key: true |
| main_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :main_user
- belongs_to :main_user_tweet

## main_user_tweet_imagesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| scr             | string     | null: false                    |
| main_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :main_user_tweet


## shop_user_tweet_imagesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| scr             | string     | null: false                    |
| shop_user_tweet | references | null: false, foreign_key: true |

### Association

- belongs_to :shop_user_tweet


## genres(active hash)テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| genre  | string | null: false |


### Association

- has_many :main_user_tweets


## take_out(active hash)テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| take_out | string | null: false |

### Association

- has_many :main_user_tweets

## prefecturesテーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :cities
- has_many :main_user_tweets
- has_many :shop_users

## citiesテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ----------------------------   |
| name       | string     | null: false                    |
| prefecture | references | null: false, foreign_key: true |

### Association

- belongs_to :prefecture
- has_many :main_user_tweets
- has_many :shop_users


## payment_typesテーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | ---------------------------- |
| payment_type     | string     | null: false                  |

### Association

- has_many   :main_user_tweets, through: :main_user_tweet_payment_type
- has_many   :main_user_tweet_payment_types
- has_many   :shop_users, through: :shop_user_payment_type
- has_many   :shop_user_payment_type


## shop_user_payment_typeテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| payment_type | references | null: false  foreign_key:true |
| shop_user    | references | null: false, foreign_key:true |

### Association

- belongs_to :shop_user
- belongs_to :payment_type


## main_user_tweet_payment_typeテーブル

| Column          | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| payment_type    | references | null: false, foreign_key:true |
| main_user_tweet | references | null: false, foreign_key:true |

### Association

- belongs_to :payment_type
- belongs_to :main_user_tweet