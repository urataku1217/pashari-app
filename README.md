# README

## 機能
- 投稿機能
- コメント機能
- お気に入り機能
- ユーザー管理機能
- 検索機能


# DBテーブル構成

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|Email|string|index: true, null:false, unique:true|
|password|string|null:false|

### Association
- has_many :posts

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|string|null: false|
|image|string||
|outer|string|null: false|
|base|string|null: false|
|inner|string|null: false|
|accessory|string|null: false|
|hairstyle|string|null: false|

### Association
- belongs_to :user

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|
|text|text|null: false|

### Association
- belongs_to :post
- belongs_to :user