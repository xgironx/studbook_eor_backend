class CreateFoals < ActiveRecord::Migration[5.0]
  def change
    create_table :foals do |t|

      t.timestamps
    end
  end
end
