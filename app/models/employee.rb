class Employee < ApplicationRecord
    validates :name, presence: true
    validates :rfc, presence: true
    validates :job, presence: true
    validates :office_id, presence: true
end
