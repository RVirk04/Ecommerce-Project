class Product < ApplicationRecord
  mount_uploader :picture, ProductPictureUploader
  belongs_to :category
  has_many :line_items, dependent: :destroy
  has_many :orders, through: :line_items

  validates :name, :description, :price, presence: true
  validates :price, length: { maximum: 7 }

  def self.search(keyword, search_category)
    # self.where('name LIKE ? and category_id = ?', "%#{keyword}%", search_category)
    if keyword.present? || search_category.present?
      if keyword && search_category == ""
        where('name LIKE ?', "%#{keyword}%")
      elsif keyword == "" && search_category != "All"
        where('category_id = ?', "%#{search_category}%")
      else
        where(['name LIKE ? AND category_id = ?', "%#{keyword}%", search_category])
      end
    else
      all
    end
  end
end
