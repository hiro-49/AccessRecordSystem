class AddIndexToMembers < ActiveRecord::Migration[6.1]
  def change
    add_index :members, :number, unique: true
    add_index :members, :idm, unique: true
  end
end
