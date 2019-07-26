* Ruby version	- has_many :posts

* System dependencies	

* Configuration	

* Database creation	|------|----|-------|

* Database initialization	|group_id|

 * How to run the test suite	### 

* Services (job queues, cache servers, search engines, etc.)

 * Deployment instructions

* ...


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false,unique: true|
|password|string|null: false,unique: true, index: true|
|name|string|null: false,unique: true, index: true|
### Association
- has_many :users_members
- has_many :comments
- has_many :members, through: :users_members

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false, unique: true, index: true
### Association
- belongs_to :user
- belongs_to :member

## user_membersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key:true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :member

## membersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false,foreign_key:true|
### Association
- has_many :user_members
- has_many :users, through: :user_members
