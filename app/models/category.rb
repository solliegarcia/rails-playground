class Category < ApplicationRecord
  validates :name, uniqueness: true # Makes it so the name has to be unique
  validates :name, presence: true

  has_many :products

  def self.to_array_for_select_field
    Category.all.map{ |category| [category.name, category.id] }
  end
end
