ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :name
    t.text :description

    t.string :provider
    t.string :uid

    t.timestamps
  end

  create_table :topics do |t|
    t.string :name
    t.date :date
    t.timestamps
  end

  create_table :media do |t|
    t.string :name
  end

  create_table :artworks do |t|
    t.string :title
    t.text :description

    t.belongs_to :topic
    t.belongs_to :medium
    t.belongs_to :user

    t.attachment :attachment
    t.timestamps
  end

   create_table :favorites, id: false do |t|
    t.belongs_to :artworks, index: true
    t.belongs_to :users, index: true
  end
end
