class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :records

  validates :name, :user_id, presence: true
end
