# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :content, :title, presence: true
  validates :title, length: { minimum: 2 }
  def a_method_used_for_validation_purposes
    errors.add(:title, 'cannot contain the characters !@#%*()_-+=')
  end
end
