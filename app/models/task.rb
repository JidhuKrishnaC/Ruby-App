class Task < ApplicationRecord
    validates :taskname, presence: true
    belongs_to :developer, optional: true
end
