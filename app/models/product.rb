class Product < ActiveRecord::Base

  include Tire::Model::Search
  include Tire::Model::Callbacks

  validates :title, :category, :description, :image_url, presence: true


  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :image_url, allow_blank: true, format:
  {
      with: %r{\.(gif|jpg|png)}i,
      message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
  }

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end

end
