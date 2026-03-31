class Book < ApplicationRecord
    validates :name, presence: true
    validates :author, presence: true
    validates :year, presence: true
end
