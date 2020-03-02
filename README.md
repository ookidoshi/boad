## CTY


## アプリ概要
- ログイン機能
- 記事投稿機能
- 写真投稿機能
- コメント機能
- 記事削除機能
- いいね機能

## 本番環境  
  
[CTY]( https://mysterious-escarpment-29370.herokuapp.com)
(テストユーザーボタンからテストユーザーとしてのログインが可能です。)
   
 ![画像](https://i.gyazo.com/55b0f3e36b56a6c7bb65f6856c99dd77.png)


## 制作背景(意図)
知識共有に特化したSNSを作ってみたかったので制作しました。

## DEMO
### 投稿一覧画面
![画像](https://i.gyazo.com/e2e3f96850d7376b00bd614cfdb63f3b.png " CTY")
 ### いいね、コメント入力
![画像](https://i.gyazo.com/6ea0efe9be6383a9ca1f29de27ca468e.png " CTY")
### 投稿挙動
![動画](https://i.gyazo.com/4bdf470eab0cdd26c3947ba23ccc3654.mp4" CTY")

### いいねコメント挙動
![動画](https://i.gyazo.com/f275390841e76311164bbc4fcf525ff5.mp4" CTY")

## 工夫したポイント

シンプルなものにしようと考えました。

### 使用技術(開発環境)
Rails 5.2.4.1
ruby 2.5.1
デプロイ Heroku

## 課題や今後実装したい機能
- ユーザー間のダイレクトメール機能
-  わるいね機能

### DB設計

# CTY DB設計
## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|post_id|integer|null: false|
|user_id|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- belongs_to :user
- belongs_to :post

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false|
|user_id|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetame|null: false|

### Association
- belongs_to :user
- belongs_to :post

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|post_id|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetame|null: false|

### Association
- belongs_to :user
- belongs_to :post


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|caption|string||
|user_id|integer|null: false|
|created_at|datetime|null: false|
|updated_at|datetame|null: false|

### Association
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|integer|null: false,unique:true|
|encrypted_password|string|null: false|
|created_at|datetime|null: false|
|updated_at|datetame|null: false|
|name|string|null: false|
|profile_photo|string||

### Association
- has_many  :posts
- has_many  :comments
- has_many  :likes

