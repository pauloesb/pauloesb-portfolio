class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic_id

  mount_uploader :cover_image, ImageUploader

  belongs_to :topic

  scope :recent, -> { order("updated_at DESC") }
end
