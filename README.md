# アプリケーション名
**E-seacher**

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

# 利用方法（DEMO）
<dl>
  <dt>ログイン画面</dt>
    <dd>登録した一般ユーザーor店舗ユーザーのメールアドレスとパスワードを入力しログインする。</dd>
  <dt>新規登録画面</dt>
    <dd>一般ユーザー：ユーザー名、メールアドレス、パスワード、名前（漢字、カナ）、性別、生年月日、電話番号、プロフィール（任意）を入力し新規登録する。</dd>
    <dd>店舗ユーザー：店舗名、メールアドレス、パスワード、郵便番号、都道府県、市町区村、番地、建物名（任意）、電話番号、ホームページリンク（任意）、プロフィール（任意）を入力し新規登録する。</dd>
  <dt>トップページ（投稿一覧表示画面）</dt>
    <dd>投稿：投稿をクリックし、口コミ投稿or店舗情報投稿ページへ遷移する。</dd>
    <dd>投稿一覧：投稿が投稿順に表示される。一般ユーザーの投稿には店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像が表示されている。店舗ユーザーの投稿には、店舗名、お店からのお知らせ、画像が表示されている。表示されている投稿をクリックすると投稿詳細ページに遷移する。投稿ユーザー名をクリックするとユーザー詳細画面に遷移する。</dd>
    <dd>投稿検索：キーワード、エリア（都道府県、市町区村）、料理ジャンルを入力、選択し、検索を行う。追加で支払い方法とテイクアウト商品の有無も選択可能。</dd>
    <dt>投稿画面</dt>
    <dd>一般ユーザー：店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像（任意）、テイクアウト商品の有無（任意）、支払い方法（任意）を入力、選択し投稿する。</dd>
    <dd>店舗ユーザー：お店からのお知らせ、画像（任意）を入力、選択し投稿する。</dd>
  <dt>投稿詳細画面</dt>
    <dd>一般ユーザー投稿：店舗名、投稿ユーザー名、エリア（都道府県、市町区村）、料理ジャンル、画像、支払い方法、テイクアウト商品の有無、ホームページリンク、編集ボタン、削除ボタン、コメント一覧、コメント投稿欄が表示される。</dd>
    <dd>店舗ユーザー投稿：店舗名、お店からのお知らせ、画像、エリア（都道府県、市町区村）、編集ボタン（投稿ユーザー本人のみ表示）、削除ボタン（投稿ユーザー本人のみ表示）、コメント一覧、コメント投稿欄が表示される。</dd>
    <dd>編集ボタン：投稿ユーザーのみに表示され、投稿編集ページへと遷移する。</dd>
    <dd>削除ボタン：投稿ユーザーのみに表示され、投稿を削除する。</dd>
    <dd>コメント投稿欄：コメント入力欄にコメントを入力し、コメントボタンを押すとコメントが投稿される。</dd>
    <dd>コメント一覧：投稿されたコメントが投稿順に表示される。コメント横には投稿ユーザー名が表示され、クリックするとユーザー詳細画面に遷移する。</dd>
  <dt>投稿編集画面</dt>
    <dd>一般ユーザー：店舗名、口コミ、エリア（都道府県、市町区村）、料理ジャンル、画像（任意）、テイクアウト商品の有無（任意）、支払い方法（任意）の入力、選択欄が表示されている。各項目を再入力後、投稿ボタンを押すと投稿内容が変更される。</dd>
    <dd>店舗ユーザー：店舗ユーザー：お店からのお知らせ、画像（任意）の入力、選択欄が表示されている。各項目を再入力後、投稿ボタンを押すと投稿内容が変更される。</dd>
  <dt>ユーザー詳細画面</dt>
    <dd>一般ユーザー：ユーザー名、プロフィール、編集ボタン、削除ボタン、自分が投稿した投稿が表示されている。</dd>
    <dd>店舗ユーザー：店舗名、プロフィール、HPリンク、住所、連絡先、自分が投稿した投稿が表示されている。</dd>
    <dd>編集ボタン：本人ユーザーのみに表示され、ユーザー編集ページへと遷移する。</dd>
    <dd>削除ボタン：本人ユーザーのみに表示され、ユーザーを削除（退会）する。</dd>
  <dt>ユーザー編集画面</dt>
    <dd>一般ユーザー：ユーザー名、メールアドレス、電話番号、プロフィール（任意）の入力、選択欄が表示されている。各項目を再入力後、保存ボタンを押すとユーザー情報が変更される。</dd>
    <dd>店舗ユーザー：店舗ユーザー：店舗名、メールアドレス、郵便番号、都道府県、市町区村、番地、建物名（任意）、電話番号、ホームページリンク（任意）、プロフィール（任意）の入力、選択欄が表示されている。各項目を再入力後、保存ボタンを押すとユーザー情報が変更される。</dd>
</dl>

# 工夫したポイント
 - 利用者の操作量を減らす為、口コミ投稿時に投稿した店舗が店舗ユーザーとして登録している場合、投稿した口コミと店舗ユーザー情報が自動で紐づく機能を実装しました。
 - 利用者の操作量を減らすことと、検索の自由度をあげる為に、検索条件を全て設定しなくても検索ができる様に検索機能を実装しました。

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