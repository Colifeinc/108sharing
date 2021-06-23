class Condition < ApplicationRecord
  has_many :posts #rubocop:disable Rails/HasManyOrHasOneDependent
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: true }
  validates :position, presence: true, uniqueness: true

  scope :by_position, -> { order(position: :asc) }
  extend ActsAsLocalizable
  RESPONSE_ATTRS = %i[id].freeze

  acts_as_column_i18n :name
end

# == Schema Information
#
# Table name: conditions
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  name_en    :string
#  name_ja    :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
