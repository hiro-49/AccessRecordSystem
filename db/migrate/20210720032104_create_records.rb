class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :name
      t.string :number
      t.float :temperature

      t.timestamps
    end
  end
end
