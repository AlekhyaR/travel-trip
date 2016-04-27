class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :color
      t.text :title
      t.string :font
      t.integer :user_id

      t.timestamps
    end
  end
end
