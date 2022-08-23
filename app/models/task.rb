class Task < ApplicationRecord
    validates :taskname, presence: true
    belongs_to :user, optional: true
end
