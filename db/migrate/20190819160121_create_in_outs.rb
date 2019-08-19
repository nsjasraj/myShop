class CreateInOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :in_outs do |t|
      t.references :brand, foreign_key: true
      t.references :model, foreign_key: true
      t.integer :in
      t.integer :out

      t.timestamps
    end
  end
end
