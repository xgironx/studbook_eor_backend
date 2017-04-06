class Stallion < ApplicationRecord
  has_many :broodmares, dependent: :destroy
  # has_many :foals, dependent: :destroy
end
