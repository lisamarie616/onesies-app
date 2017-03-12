class Category < ApplicationRecord
  has_many :categorizations
  has_many :products, through: :categorizations

  extend FriendlyId
  friendly_id :name, use: :slugged

  private

  def should_generate_new_friendly_id?
    slug.nil? || name_changed?
  end

end