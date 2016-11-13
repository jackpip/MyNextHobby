class AddUserIdToHobbies < ActiveRecord::Migration[5.0]
  def change
    add_column :hobbies, :user_id, :integer
  end
end
