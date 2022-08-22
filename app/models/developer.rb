class Developer < ApplicationRecord
    validates :firstname, presence: true
    has_many :tasks
end
