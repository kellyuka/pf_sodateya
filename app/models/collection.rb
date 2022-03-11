class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :wanko

  validates :user_id, uniqueness: { scope: :wanko_id }
end
