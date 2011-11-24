class AddBordIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :bord_id, :integer
  end

  def self.down
    remove_column :posts, :bord_id
  end
end
