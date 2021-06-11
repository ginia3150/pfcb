# テーブル設計

## usersテーブル

| Colum    | Type    | Options                   |
| -------- | ------- | ------------------------- |
| n_name   | string  | null: false               |
| email    | string  | null: false, unique: true |
| password | string  | null: false               |
| height   | integer | null: false               |
| weight   | integer | null: false               |
| age      | integer | null: false               |

### Association

- has_many :wants
- has_many :total

## wantsテーブル

| Colum  | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| object | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## totalsテーブル

| Colum   | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| protein | string     |                                |
| fat     | string     |                                |
| carb    | string     |                                |
| calorie | string     |                                |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user