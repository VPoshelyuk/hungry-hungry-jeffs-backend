class GameSerializer < ActiveModel::Serializer
  has_many :games
  attributes :id, :games
end
