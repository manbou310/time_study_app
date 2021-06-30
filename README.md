# README
# テーブル設計

## users テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| name          | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
| job           | string  | null: false |
| Standard_time | integer |             |


## channels テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

## works テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
