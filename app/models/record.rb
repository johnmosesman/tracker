class Record < ActiveRecord::Base
  belongs_to :activity

  validates :activity_id, presence: true
end
