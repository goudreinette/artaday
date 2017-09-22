ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :name
    t.text :description

    t.string :provider
    t.string :uid

    t.timestamps
  end

  create_table :media do |t|
    t.string :name
  end

  create_table :artworks do |t|
    t.string :title
    t.text :description

    t.belongs_to :medium
    t.belongs_to :user

    t.attachment :attachment
    t.timestamps
  end


  create_table :votes do |t|
    t.references :votable, :polymorphic => true
    t.references :voter, :polymorphic => true

    t.boolean :vote_flag
    t.string :vote_scope
    t.integer :vote_weight

    t.timestamps
  end

  add_index :votes, [:voter_id, :voter_type, :vote_scope]
  add_index :votes, [:votable_id, :votable_type, :vote_scope]
end
