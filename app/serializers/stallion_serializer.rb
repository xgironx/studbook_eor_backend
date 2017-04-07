class StallionSerializer < ActiveModel::Serializer
    attributes :name, :age, :color, :registry_tattoo, :stud_fee, :stakes_winner_progeny, :img_url, :link_to_pedigree_url
    # attributes :name, :age, :color, :registry_tattoo, :stud_fee, :stakes_winner_progeny, :img_url, :link_to_pedigree_url, :id
    # attributes :name, :age, :color, :registry_tattoo, :stud_fee, :stakes_winner_progeny, :img_url, :link_to_pedigree_url, :stallion_id
end
