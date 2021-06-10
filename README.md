## アプリケーション名
- 旅Log

## アプリケーション概要

### ユーザー登録機能
- deviseを用いたユーザー登録機能
- 必要な情報をそれぞれ入力すればユーザー登録が可能

### Log投稿機能
- ログインしているユーザーは、画像をつけて旅行した場所を簡単に紹介できる

### Log詳細表示機能
- ユーザーが投稿したLogの内容を表示する

### Log削除機能
- 投稿したLogを投稿したユーザーのみ消去することができる

### コメント機能
- Logの詳細ページでログインしているユーザーのみコメントを投稿することができる

## URL
 https://tabi-log-35545.herokuapp.com/

## テスト用アカウント
- Basic認証  ID: test, Pass: 0000
- 投稿用     Email: test@com, Pass: test111

## 利用方法

### 新規登録
1.ヘッダー部分の新規登録から新規登録ページに遷移  
2.必要な情報を入力を入力し、新規登録ボタンをクリックする
[![Image from Gyazo](https://i.gyazo.com/6222ccee70922fb40c83e2eba3f9ebcb.gif)](https://gyazo.com/6222ccee70922fb40c83e2eba3f9ebcb)

### 新規投稿の方法
1.ログインしている状態でヘッダー部分の新規投稿から新規投稿ページに遷移  
2.添付したい画像の選択と必要の情報を入力して投稿するをクリックする
[![Image from Gyazo](https://i.gyazo.com/601b6ebac80b03866a8599c4eff98b75.gif)](https://gyazo.com/601b6ebac80b03866a8599c4eff98b75)

### 投稿詳細表示機能
1.投稿一覧から詳細ページにいきたい投稿をクリックすることでページに遷移する

### 投稿削除機能
1.投稿詳細ページでLogを投稿したユーザーのみ投稿を削除するをクリックすることで投稿を削除できる

### コメント投稿の方法
1.ログインしている状態で投稿詳細ページに遷移する  
2.コメント投稿フォームにコメントを打ちコメントするをクリックする
[![Image from Gyazo](https://i.gyazo.com/dbf79df27871f02ce464ac60d4437a5a.gif)](https://gyazo.com/dbf79df27871f02ce464ac60d4437a5a)

## 目指した課題解決
- 旅行をしたいが行き先が決まっていない人に向けてオススメの旅行先を投稿して紹介することで旅行先の候補を決めやすくする

## 要件定義
[![Image from Gyazo](https://i.gyazo.com/97e259721c623c23b480b720b5ab9075.png)](https://gyazo.com/97e259721c623c23b480b720b5ab9075)

## DB設計
[![Image from Gyazo](https://i.gyazo.com/850ad7497b9f6058c3c6bc2b31bcab1c.png)](https://gyazo.com/850ad7497b9f6058c3c6bc2b31bcab1c)

## 開発環境

### バックエンド
Ruby,Ruby on rails

### フロントエンド
HTML,CSS

### データベース
MySQL,Sequel Pro

### サーバー(本番環境)
Heroku

### ソース管理
GitHub,GitHubDesktop

### テスト
RSpec

### エディタ
VScode

## 課題や今後実装してみたい機能
- タグ付け機能
- 投稿検索機能

## テーブル設計

### Logテーブル

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