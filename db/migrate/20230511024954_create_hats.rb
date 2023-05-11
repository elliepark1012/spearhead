class CreateHats < ActiveRecord::Migration[7.0]
  def change
    create_table :hats do |t|
      t.string :name
      t.float :price
      t.string :size
      t.string :image
      t.belongs_to :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
