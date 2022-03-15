class BandSerializer < ActiveModel::Serializer
  type :profile
  attributes :id, :name
  has_many :members
end
