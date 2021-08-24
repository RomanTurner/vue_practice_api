class User < ApplicationRecord
  has_many :organized_events, class_name: "Event", foreign_key: :organizer_id, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :events, through: :participants, dependent: :destroy
end
