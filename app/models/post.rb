class Post < ApplicationRecord
    serialize :keywords, Array, coder: JSON
    belongs_to :user

    has_one_attached :image
end
