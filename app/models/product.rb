class Product < ApplicationRecord

  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: {greather_than_or_equal: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "aceita apenas formatos, GIF, JPG e PNG"
  }

end
