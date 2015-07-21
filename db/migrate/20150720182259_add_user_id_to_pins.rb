class AddUserIdToPins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.integer :user_id
      t.timestamps
    end
    add_index :pins, :user_id
    Pin.reset_column_information ## Model name should be singular
  end
end

