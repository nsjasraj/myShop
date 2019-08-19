class Model < ApplicationRecord
  belongs_to :brand
  has_many :in_outs
end
