# todo-app DB

##projectsテーブル

|Column|Type|Options|
|------|----|-------|
|project|string|null :false, index: true|

##association
has_many :tasks, dependent: :destroy

##tasksテーブル

|Column|Type|Options|
|------|----|-------|
|task|string|null :false, index: true|
|text|text|null :false|
|deadline|datetime|null: false|
|project|references|null: false, foreign_key: true|

##association
belongs_to :project