FactoryBot.define do
  factory :identification do
    user
    description { "MyText" }
    workflow_state { 1 }
  end
end

# == Schema Information
#
# Table name: identifications
#
#  id             :bigint(8)        not null, primary key
#  description    :text
#  workflow_state :integer          default("requested"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint(8)
#
# Indexes
#
#  index_identifications_on_user_id  (user_id)
#
