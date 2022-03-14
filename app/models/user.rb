# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :email, uniqueness: true
  validates :name, length: { maximum: 20 }
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  has_many :collections, dependent: :destroy
  has_many :collections_wankos, through: :collections, source: :wanko
  enum role: { general: 0, admin: 1 }

  def collection(wanko)
    collections_wankos << wanko
  end

  def collection?(wanko)
    wanko.collections.pluck(:user_id).include?(id)
  end
end
