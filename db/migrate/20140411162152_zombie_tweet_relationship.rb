class ZombieTweetRelationship < ActiveRecord::Migration
  def change
    add_column :tweets , :zombie_id , :integer
    add_column :zombies, :grave_yard, :string
  end
end
