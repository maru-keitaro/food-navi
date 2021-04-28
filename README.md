## usersテーブル

|Column    |Type     |Options                    |
|----------|---------|---------------------------|
| name     | string  | null: false               |
| email    | string  | null: false, unique: true |
| password | string  | null: false               |

### Association


## foodsテーブル

|Column           |Type        |Options                         |
|-----------------|------------|--------------------------------|
| item            | string     | null: false                    |  料理名
| description     | text       | null: false                    |  料理詳細
| calorie         | integer    | null: false                    |  カロリー
| time_id         | integer    | null: false                    |  料理時間
| ingredient      | integer    | null: false                    |  食材
| price           | integer    | null: false                    |  食材金額
| image           |            | Active Storage                 |  料理画像
| user_id         | references | null: false, foreign_key: true |

### Association


# reviewsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |  コメント欄
| user_id | references | null: false, foreign_key: true |
| food_id | references | null: false, foreign_key: true |


## Association

# likesテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user_id   | references | null: false, foreign_key: true |
| review_id | references | null: false, foreign_key: true |

## Association