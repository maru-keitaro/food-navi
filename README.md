## usersテーブル

|Column    |Type     |Options                    |
|----------|---------|---------------------------|
| name     | string  | null: false               |  ユーザー名
| email    | string  | null: false, unique: true |  メールアドレス
| password | string  | null: false               |  パスワード

### Association
- has_many :foods
- has many :likes


# foodsテーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| store_name | string     | null: false                    |  店舗名
| genre_id   | integer    | null: false                    |  ジャンル
| content    | text       | null: false                    |  口コミ欄
| image      |            | Active Storage                 |  投稿画像
| user_id    | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- has_many :likes


# likesテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |  イイね機能
| user_id | references | null: false, foreign_key: true |
| food_id | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :food