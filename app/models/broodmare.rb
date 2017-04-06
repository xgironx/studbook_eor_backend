class Broodmare < ApplicationRecord
  belongs_to :stallion
  has_many   :foals, dependent: :destroy
end

# FROM GITHUB:
# class Broodmare < ActiveRecord::Base
#   belongs_to :stallion
#   has_many :foals, dependent: :destroy
# end
