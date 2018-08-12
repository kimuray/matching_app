class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :self_introduction, :height, :weight
end
