# アプリケーション名
**E-searcher**

# アプリケーション概要
飲食店の口コミの投稿、閲覧、検索が可能です。目玉機能は、検索機能です。投稿された口コミの中からキーワード、エリア（都道府県、市町区村）、料理ジャンルを入力及び選択し、<br>
自分の行きたいお店や気になるお店を検索することが出来ます。追加で支払い方法（クレジットカード、電子マネー、QRコード）や<br>
テイクアウト商品の有無も検索条件に入れることが可能であり、より自分が行きたいお店や気になっているお店を検索することが出来ます。<br>
投稿には、画像やお店があるエリアなどの情報が載っており、一目でお店の雰囲気などの情報を見ることが出来ます。

# 制作背景（意図）
現在普及している飲食店の検索方法としては主に以下2点が挙げられると考えております。<br>
  ・飲食店検索アプリによる検索<br>
  ・SNSを利用した検索<br>
しかし、これらの検索には以下の様なメリット、デメリットがあると考え、この両者のメリットを掛け合わせたアプリがあれば、より飲食店の検索効率が上がり、<br>お店選びに困っている人たちの役に立てると考えた為、このアプリを作成しました。<br>
・デメリット<br>
  飲食店検索アプリ：検索条件が非常に多いことやサイトに掲載されている情報量が多く、自分が必要な情報を手に入れるのに時間が掛かってしまう。<br>
  SNS：タグ付けや投稿に自由度がありすぎる為、検索しても自分の欲しい情報を手に入れにくい。<br>
・メリット<br>
  飲食店検索アプリ：店舗の所在をエリア毎に検索可能であることや料理のジャンルを選択し、簡単に検索できる。<br>
  SNS：ユーザーが気軽に投稿できることや飲食店検索アプリなどには掲載されていない様な情報も投稿し易い。<br>


# 本番環境
[E-searcher](https://e-seacher.herokuapp.com/)
 <dl>
  <dt>Basic認証</dt>
    <dd>ID:reityeru</dd>
    <dd>パス:5555</dd>
  </dl>
  <dt>テスト用アカウント（一般ユーザー）</dt>
    <dd>メールアドレス:test@test1234.com</dd>
    <dd>パスワード:123qwe</dd>
  <dt>テスト用アカウント（店舗ユーザー）</dt>
    <dd>メールアドレス:test@test5678.com</dd>
    <dd>パスワード:123qwe</dd>
</dl>

# 利用方法（DEMO）
1. 一般ユーザーor店舗ユーザーのアカウント作成
1. トップページより口コミの投稿、検索
1. 投稿された口コミをクリックし、口コミの詳細を閲覧


# 工夫したポイント
 - 利用者の操作量を減らす為、口コミ投稿時に投稿した店舗が店舗ユーザーとして登録している場合、投稿した口コミと店舗ユーザー情報が自動で紐づく機能を実装しました。
 - 利用者の操作量を減らすことと、検索の自由度をあげる為に、検索条件を全て設定しなくても検索ができる様に検索機能を実装しました。
 - 

# 実装予定の内容
 - プルダウンリストにて都道府県選択後、選択した都道府県に連動して市町区村をプルダウンリストで選択可能とする機能（JavaScript）<br>
 - 料理ジャンルの細分化及び、都道府県と同様の料理ジャンルのプルダウンリスト連動機能（JavaScript）<br>
 - 各種支払い方法の細分化及び、ラジオボタン選択に連動した、細分化された支払い方法の表示（JavaScript）<br>
 - いいね機能：お店や料理に対しての評価を行う機能（JavaScript）<br>
 - お気に入り機能：気になる投稿を保存し、マイページからいつでも閲覧が可能となる機能<br>
 - SNSログイン機能<br>
 - 画像プレビュー機能（JavaScript）


# 使用技術(開発環境)

## バックエンド
Ruby,Ruby on Rails

## フロントエンド
HTML,CSS

## データベース
MySQL,Sequel PRO

## インフラ
Heroku

## Webサーバー
WEBrick

## アプリケーションサーバー
Puma

## ソース管理
GitHub,GitHub Desktop

## テスト
RSpec

## エディタ
VSCode

# DB設計

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
| prefecture_id      | integer | null: false               |
| city_id            | integer | null: false               |
| address            | string  | null: false               |
| building_name      | string  |                           |
| profile            | text    |                           |
| shop_link          | string  |                           |

### Association

- belongs_to :prefecture
- belongs_to :city
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
| prefecture_id  | integer     | null: false                    |
| city_id        | integer     | null: false                    |
| genres_id      | integer     | null: false                    |
| take_out       | string      |                                |
| main_user      | references  | null: false, foreign_key: true |
| shop_user      | references  | foreign_key: true              |

### Association

- belongs_to :main_user
- belongs_to :genre
- belongs_to :shop_user
- belongs_to :prefecture
- belongs_to :city
- has_many   :main_user_comments, as: :main_usesr_tweet_commentable
- has_many   :shop_user_comments, as: :main_usesr_tweet_commentable
- has_many   :goods
- has_many   :likes
- has_many   :payment_types, through: :main_user_tweet_payment_type
- has_many   :main_user_tweet_payment_types
- has_many_attached :images



## shop_user_tweetsテーブル

| Column    | Type        | Options                        |
| --------- | ----------- | ------------------------------ |
| text      | text        | null: false                    |
| shop_user | references  | null: false, foreign_key: true |

### Association

- belongs_to :shop_user
- has_many   :shop_user_comments, as: :shop_usesr_tweet_commentable
- has_many   :main_user_comments, as: :shop_usesr_tweet_commentable



## main_user_commentsテーブル

| Column                            | Type       | Options                        |
| ----------------------------------| ---------- | ------------------------------ |
| comment                           | text       | null: false                    |
| main_user                         | references | null: false, foreign_key: true |
| main_usesr_tweet_commentable_id   | integer    | null: false, polymorphic: true |
| main_usesr_tweet_commentable_type | string     | null: false, polymorphic: true |

### Association

- belongs_to :main_user
- belongs_to :main_usesr_tweet_commentable,  polymorphic: true


## shop_user_commentsテーブル

| Column                            | Type       | Options                        |
| --------------------------------- | ---------- | ------------------------------ |
| comment                           | text       | null: false                    |
| shop_user                         | references | null: false, foreign_key: true |
| shop_usesr_tweet_commentable_id   | integer    | null: false, polymorphic: true |
| shop_usesr_tweet_commentable_type | string     | null: false, polymorphic: true |

### Association

- belongs_to :shop_user
- belongs_to :shop_usesr_tweet_commentable,  polymorphic: true


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


## genres(active hash)テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| genre  | string | null: false |


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


## shop_user_payment_typesテーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| payment_type | references | null: false  foreign_key:true |
| shop_user    | references | null: false, foreign_key:true |

### Association

- belongs_to :shop_user
- belongs_to :payment_type


## main_user_tweet_payment_typesテーブル

| Column          | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| payment_type    | references | null: false, foreign_key:true |
| main_user_tweet | references | null: false, foreign_key:true |

### Association

- belongs_to :payment_type
- belongs_to :main_user_tweet