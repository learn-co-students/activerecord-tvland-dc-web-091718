class CreateCharacter < ActiveRecord::Migration[5.1]

  def change
    create_table :characters do |t|
      t.string :catchphrase
      t.integer :show_id
      t.string :name
    end
  end
end
