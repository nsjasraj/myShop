class DropInOutTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :in_outs
  end
end
