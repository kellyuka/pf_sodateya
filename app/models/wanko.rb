# frozen_string_literal: true

class Wanko < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :collections, dependent: :destroy
end
