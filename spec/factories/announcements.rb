FactoryBot.define do
  factory :announcement do
  end
end

# == Schema Information
#
# Table name: announcements
#
#  id         :bigint(8)        not null, primary key
#  body       :text
#  publish_at :datetime
#  title      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#
# Indexes
#
#  index_announcements_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
