class BroodmareSerializer < ActiveModel::Serializer
  attributes :name, :age, :color, :registry_tattoo, :link_to_pedigree_url, :img_url, :stallion_id, :barren, :num_foals, :in_foal_now, :expected_foaling_date
end
