class CreateBroodmares < ActiveRecord::Migration[5.0]
  def change
    create_table :broodmares do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.string :registry_tattoo
      t.string :link_to_pedigree_url
      t.string :img_url
      t.integer :stallion_id
      t.boolean :barren
      t.integer :num_foals
      t.boolean :in_foal_now
      t.date :expected_foaling_date
t.references :stallion, null: false, index:true
      t.timestamps
    end
  end
end
