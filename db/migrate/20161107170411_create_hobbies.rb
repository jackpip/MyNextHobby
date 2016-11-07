class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.integer :resource_id
      t.integer :message_id

      t.timestamps
    end
  end
end
