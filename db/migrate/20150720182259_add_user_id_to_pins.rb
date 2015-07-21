class AddUserIdToPins < ActiveRecord::Migration
  def change
  	remove_column :pins, :user_id
    add_column :pins, :user_id, :integer
  end
end


