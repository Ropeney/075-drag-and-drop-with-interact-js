# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string
#  favorite   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Food < ApplicationRecord
  has_many :recipies, dependent: :destroy, class_name: 'Recipe'
  has_many :ingredients, through: :recipes

  def self.favorite_foods
    where(favorite: true)
  end

  def self.no_opinion_foods
    where(favorite: false)
  end
end
