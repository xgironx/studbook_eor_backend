class FoalSerializer < ActiveModel::Serializer
  attributes :name, :sex, :foaling_date, :color, :markings, :registry_tattoo, :link_to_pedigree_url, :img_url, :stallion_id, :birthplace, :broodmare_id
end
