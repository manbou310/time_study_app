# README
# テーブル設計

## users テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| name          | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
| image         |         |             |

### Association
- has_many :channel_users
- has_many :channels, through: :channel_users
- has_many :works



## channels テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association
- has_many :channel_users
- has_many :users, through: :channel_users
- has_many :works




## channel_users テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| channel   | references | null: false, foreign_key: true |

### Association
- belongs_to :room
- belongs_to :user




## works テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| production_name      | string     |                                |
| serial number        | string     |                                |
| standard_time        | integer    |                                |
| job_time             | integer    | null: false                    |
| production volume    | string     | null: false                    |
| failure              | text       |                                |
| failure              | text       |                                |
| forgetting           | text       |                                |
| note                 | text       |                                |
| user                 | references | null: false, foreign_key: true |
| chanel               | references | null: false, foreign_key: true |



### Association
- belongs_to :works
- belongs_to :user
