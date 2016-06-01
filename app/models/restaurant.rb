class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: %w( chinese italian japanese french belgian ) }
  delete_all
end

