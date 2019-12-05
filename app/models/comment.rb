# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :content, length: { minimum: 2 }
end
