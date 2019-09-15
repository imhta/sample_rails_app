class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :follower
      t.integer :id
      t.string :followed
      t.integer :id

      t.timestamps
    end
    add index :relationships, :follower id
    add index :relationships, :followed id
    add index :relationships, [:follower id, :followed id], unique: true
  end
end
