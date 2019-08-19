class CreateInOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :in_outs do |t|
      t.references :Brand, foreign_key: true
      t.references :Model, foreign_key: true
      t.integer :in
      t.integer :out

      t.timestamps
    end
  end
end
