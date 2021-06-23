FactoryBot.define do
  factory :card do
    user
    stripe_card_id { "card_1F3KFWAcuXu5XI2SLf6e91fJ" }
    fingerprint { "MqHqGlTXtmJuOM66" }
    last4 { "4444" }
    brand { "MasterCard" }
    exp_month { 2 }
    exp_year { 2022 }
    cvc_check { "pass" }
  end
end

# == Schema Information
#
# Table name: cards
#
#  id             :bigint(8)        not null, primary key
#  active         :boolean          default(TRUE), not null
#  brand          :string           not null
#  cvc_check      :string
#  exp_month      :integer
#  exp_year       :integer
#  fingerprint    :string           not null
#  last4          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  stripe_card_id :string           not null
#  user_id        :bigint(8)        not null
#
# Indexes
#
#  index_cards_on_active          (active)
#  index_cards_on_fingerprint     (fingerprint)
#  index_cards_on_stripe_card_id  (stripe_card_id)
#  index_cards_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
