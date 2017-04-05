class CreateStallions < ActiveRecord::Migration[5.0]
  def change
    create_table :stallions do |t|

      t.timestamps
    end
  end
end
