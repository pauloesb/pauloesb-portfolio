class Portfolio < ApplicationRecord
  has_many :technologies, inverse_of: :portfolio
  accepts_nested_attributes_for :technologies, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  scope :by_position, -> { order("position ASC") }
end
