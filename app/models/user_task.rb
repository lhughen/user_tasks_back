class UserTask < ApplicationRecord
  belongs_to :user

  validates :description, :state, presence: true
  validates :state, inclusion: { in: %w(to_do done) }
end
