class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :hobby_id
      t.integer :user_id

      t.timestamps
    end
  end
end
