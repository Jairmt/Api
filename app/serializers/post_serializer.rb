class PostSerializer < ActiveModel::Serializer

    attributes :id, :body
    belongs_to :user

    class UserSerelizer < ActiveModel::Serializer
        attributes :token, :name 
        end
end