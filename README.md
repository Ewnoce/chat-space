# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## chatspace DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false|
## Association
- has_many :groups, through: :group_user
- has_many :messages
- has_many :group_user

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, unique :ture|
### Association
- has_many :users, through: :group_user
- has_many :messages
- has_many :group_user

## group_userテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null :false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

