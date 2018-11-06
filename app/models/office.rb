class Office < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :neighborhood, presence: true
  validates :postal, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
