class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :initials, :profile_pic_path, :games
end
