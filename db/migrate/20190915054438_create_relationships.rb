class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add index :relationships, :follower_id
    add index :relationships, :followed_id
    add index :relationships, [:follower_id, :followed_id], unique: true
  end
end
