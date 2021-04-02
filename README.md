# アプリケーション名
**E-searcher**

# アプリケーション概要
飲食店の口コミの投稿、閲覧、検索が可能です。目玉機能は、検索機能です。投稿された口コミの中からキーワード、エリア（都道府県、市町区村）、料理ジャンルを入力及び選択し、自分の行きたいお店や気になるお店を検索することが出来ます。追加で支払い方法（クレジットカード、電子マネー、QRコード）や
テイクアウト商品の有無も検索条件に入れることが可能であり、より自分が行きたいお店や気になっているお店を検索することが出来ます。<br>
投稿には、画像やお店があるエリアなどの情報が載っており、一目でお店の雰囲気などの情報を見ることが出来ます。<br>
また、ユーザーは一般ユーザー（お客側）と店舗ユーザー（飲食店側）に別れており、店舗ユーザーは口コミ投稿機能を活用し、クーポンの配信や営業時間変更のお知らせを容易に行うことができます。

# 制作背景（意図）
現在普及している飲食店の検索方法としては主に以下2点が挙げられると考えております。<br>
  ・飲食店検索アプリによる検索<br>
  ・SNSを利用した検索<br>
しかし、これらの検索には以下の様なメリット、デメリットがあると考え、この両者のメリットを掛け合わせたアプリがあれば、より飲食店の検索効率が上がり、お店選びに困っている人たちの役に立てると考えた為、このアプリを作成しました。<br>
・メリット<br>
  飲食店検索アプリ：店舗の所在をエリア毎に検索可能であることや料理のジャンルを選択し、簡単に検索できる。<br>
  SNS：ユーザーが気軽に投稿できることや飲食店検索アプリなどには掲載されていない様な情報も投稿し易い。また、飲食店側は営業時間変更などの情報発信も行い易い。<br>
・デメリット<br>
  飲食店検索アプリ：検索条件が非常に多いことやサイトに掲載されている情報量が多く、自分が必要な情報を手に入れるのに時間が掛かってしまう。また、情報の更新に手間が掛かり、営業時間の変更などの情報発信が行い難い。<br>
  SNS：タグ付けや投稿に自由度がありすぎる為、検索しても自分の欲しい情報を手に入れにくい。


# 本番環境
[E-seacher](https://e-seacher.herokuapp.com/)
 <dl>
  <dt>Basic認証</dt>
    <dd>ID:reityeru</dd>
    <dd>パス:5555</dd>
  <dt>テスト用アカウント（一般ユーザー）</dt>
    <dd>メールアドレス:test@test1234.com</dd>
    <dd>パスワード:123qwe</dd>
  <dt>テスト用アカウント（店舗ユーザー）</dt>
    <dd>メールアドレス:test@test5678.com</dd>
    <dd>パスワード:123qwe</dd>
</dl>

# 利用方法（画像や動画は開発中のものです）
  ## ログイン画面
  ![一般ユーザーログイン画面](https://user-images.githubusercontent.com/78288589/113391761-fbae9200-93ce-11eb-8d5b-f9d8a3752255.png)
  - 登録した一般ユーザーもしくは店舗ユーザーのメールアドレスとパスワードを入力しログインする。（店舗ユーザーログインは店舗ユーザーログイン画面より行う。）

  ## 新規登録画面
  ### 一般ユーザー新規登録画面
  ![一般ユーザー新規登録画面](https://user-images.githubusercontent.com/78288589/113392761-978ccd80-93d0-11eb-926d-af716af9e2b9.png)
  - ユーザー名、メールアドレス、パスワード、名前（漢字、カナ）、性別、生年月日、電話番号、プロフィール（任意）を入力し新規登録する。
  ### 店舗ユーザー新規登録画面
  ![店舗ユーザー新規登録画面](https://user-images.githubusercontent.com/78288589/113392910-d0c53d80-93d0-11eb-9112-5f9a77150aed.png)
  - 店舗名、メールアドレス、パスワード、郵便番号、都道府県、市町区村、番地、建物名（任意）、電話番号、ホームページリンク（任意）、プロフィール（任意）を入力し新規登録する。

  ## トップページ（投稿一覧表示画面）
  ![トップページ](https://user-images.githubusercontent.com/78288589/113393878-45e54280-93d2-11eb-8f2f-93d1868022f3.gif)
   - 投稿：口コミ投稿をクリックし、口コミ投稿or店舗情報投稿ページへ遷移する。
   - 投稿一覧：投稿が投稿順に表示される。一般ユーザーの投稿には店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像が表示されている。店舗ユーザーの投稿には、店舗名、お店からのお知らせ、画像が表示されている。表示されている投稿をクリックすると投稿詳細ページに遷移する。投稿ユーザー名をクリックするとユーザー詳細画面に遷移する。
   - 投稿検索：キーワード、エリア（都道府県、市町区村）、料理ジャンルを入力、選択し、検索を行う。追加で支払い方法とテイクアウト商品の有無も選択可能。

  ## 投稿画面
  ### 一般ユーザー口コミ投稿画面
  ![一般ユーザー口コミ投稿画面](https://user-images.githubusercontent.com/78288589/113395774-564aec80-93d5-11eb-9bcb-c909802cb12c.png)
  - 店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像（任意）、テイクアウト商品の有無（任意）、支払い方法（任意）を入力、選択し投稿する。

  ### 店舗ユーザー情報投稿画面
  ![店舗ユーザー情報投稿画面](https://user-images.githubusercontent.com/78288589/113396197-16d0d000-93d6-11eb-9b9c-c8efb5508a0a.png)
  - お店からのお知らせ、画像（任意）を入力、選択し投稿する。

  ## 投稿詳細画面
  ### 一般ユーザー投稿詳細画面
  ![一般ユーザー投稿詳細画面](https://user-images.githubusercontent.com/78288589/113396770-079e5200-93d7-11eb-9b23-ae763b99ee32.png)
  - 店舗名、投稿ユーザー名、エリア（都道府県、市町区村）、料理ジャンル、画像、支払い方法、テイクアウト商品の有無、ホームページリンク、編集ボタン、削除ボタン、コメント一覧、コメント投稿欄が表示される。
  - 編集ボタン：投稿ユーザーのみに表示され、投稿編集ページへと遷移する。
  - 削除ボタン：投稿ユーザーのみに表示され、投稿を削除する。
  - コメント投稿欄：コメント入力欄にコメントを入力し、コメントボタンを押すとコメントが投稿される。
  - コメント一覧：投稿されたコメントが投稿順に表示される。コメント横には投稿ユーザー名が表示され、クリックするとユーザー詳細画面に遷移する。

  ### 店舗ユーザー投稿詳細画面
  ![店舗ユーザー投稿詳細画面](https://user-images.githubusercontent.com/78288589/113396645-cdcd4b80-93d6-11eb-8110-c66d41b41e5a.png)
  - 店舗名、お店からのお知らせ、画像、エリア（都道府県、市町区村）、編集ボタン（投稿ユーザー本人のみ表示）、削除ボタン（投稿ユーザー本人のみ表示）、コメント一覧、コメント投稿欄が表示される。
  - 編集ボタン：投稿ユーザーのみに表示され、投稿編集ページへと遷移する。
  - 削除ボタン：投稿ユーザーのみに表示され、投稿を削除する。
  - コメント投稿欄：コメント入力欄にコメントを入力し、コメントボタンを押すとコメントが投稿される。
  - コメント一覧：投稿されたコメントが投稿順に表示される。コメント横には投稿ユーザー名が表示され、クリックするとユーザー詳細画面に遷移する。

  ## 投稿編集画面
    一般ユーザー：店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像（任意）、テイクアウト商品の有無（任意）、支払い方法（任意）の入力、選択欄が表示されている。各項目を再入力後、投稿ボタンを押すと投稿内容が変更される。
    店舗ユーザー：店舗ユーザー：お店からのお知らせ、画像（任意）の入力、選択欄が表示されている。各項目を再入力後、投稿ボタンを押すと投稿内容が変更される。

  ## ユーザー詳細画面
    一般ユーザー：ユーザー名、プロフィール、編集ボタン、削除ボタン、自分が投稿した投稿が表示されている。
    店舗ユーザー：店舗名、プロフィール、HPリンク、住所、連絡先、自分が投稿した投稿が表示されている。
    編集ボタン：本人ユーザーのみに表示され、ユーザー編集ページへと遷移する。
    削除ボタン：本人ユーザーのみに表示され、ユーザーを削除（退会）する。

  ## ユーザー編集画面
    一般ユーザー：ユーザー名、メールアドレス、電話番号、プロフィール（任意）の入力、選択欄が表示されている。各項目を再入力後、保存ボタンを押すとユーザー情報が変更される。
    店舗ユーザー：店舗名、メールアドレス、郵便番号、都道府県、市町区村、番地、建物名（任意）、電話番号、ホームページリンク（任意）、プロフィール（任意）の入力、選択欄が表示されている。各項目を再入力後、保存ボタンを押すとユーザー情報が変更される。

# 工夫したポイント
 - 利用者の操作量を減らす為、口コミ投稿時に投稿した店舗が店舗ユーザーとして登録している場合、投稿した口コミと店舗ユーザー情報が自動で紐づく機能を実装しました。
 - 利用者の操作量を減らすことと、検索の自由度をあげる為に、検索条件を全て設定しなくても検索ができる様に検索機能を実装しました。
 - ユーザーを一般ユーザーと店舗ユーザーに分けることにより、店舗ユーザーも投稿機能を活用し、宣伝や営業時間の変更などの情報発信を容易に行える様に機能を実装しました。

# 実装予定の内容
 - 各画面のデザイン<br>
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