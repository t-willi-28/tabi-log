## Logテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| place       | string     | null: false       |
| description | string     | null: false       |
| point       | string     | null: false       |
| user        | references | foreign_key: true |

### Association
- belongs_to :user
- has_many   :comments

## Userテーブル

| Column             | Type   | Options         |
| ------------------ | ------ | --------------- |
| nickname           | string | null: false     |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false     |

### Association
- has_many :logs
- has_many :comments

## Commentテーブル

| Column | Type       | Option            |
| ------ | ---------- | ----------------- |
| text   | text       | null: false       |
| log    | references | foreign_key: true |
| user   | references | foreign_key: true |

### Association
- has_many :logs
- has_many :users