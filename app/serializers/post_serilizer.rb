class Postserializer < ActiveModel::Serializer

    attributes :id, :body
    belongs_to :user

    class UserSerelizer < ActiveModel::Serializer
        attributes :id ,:name 
        end
end