class User < ApplicationRecord
  has_many :user_tasks

  validates :name, presence: true
end
