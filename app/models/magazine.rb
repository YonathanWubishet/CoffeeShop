class Magazine < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 5 }
end
