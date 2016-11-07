class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :link
      t.integer :hobby_id

      t.timestamps
    end
  end
end
