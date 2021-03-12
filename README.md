# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type      | Options                       |
| ---------- | --------- | ----------------------------- |
| title      | string    | null: false                   |
| catch_copy | text      | null: false                   |
| concept    | text      | null: false                   |
| user       | reference | null: false, foreign_key: true|

### Association

- has_many :comments
- belongs to :user

## commentsテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| prototypes | references | null: false, foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user