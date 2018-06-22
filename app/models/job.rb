class Job < ApplicationRecord
  belongs_to :category
  validates :title, :description, :company, presence: true
end
