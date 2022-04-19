class Product < ApplicationRecord
  mount_uploader :picture, ProductPictureUploader
  belongs_to :category
  has_many :line_items, dependent: :destroy
  has_many :orders, through: :line_items

  validates :name, :description, :price, presence: true
  validates :price, length: { maximum: 7 }

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
  end
end
