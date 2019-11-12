class GameSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  attributes :id, :level, :score, :user, :created_at
end
