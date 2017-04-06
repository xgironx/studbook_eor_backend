class CreateFoals < ActiveRecord::Migration[5.0]
  def change
    create_table :foals do |t|
      t.string :name
      t.string :sex
      t.date :foaling_date
      t.string :color
      t.string :markings
      t.string :registry_tattoo
      t.string :link_to_pedigree_url
      t.string :img_url
      t.integer :stallion_id
      t.string :birthplace
      t.integer :broodmare_id
t.references :broodmare, null: false, index:true
# t.references :stallion, null: false, index:true
      t.timestamps
    end
  end
end
