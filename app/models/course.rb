class Course < ApplicationRecord
  # Courses can be created by users
  belongs_to :user
  # Allows for multiple rows in sections table to have the same course id
  has_many :sections

  mount_uploader :image, ImageUploader

  # Validate that courses have a title, description, and cost
  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
