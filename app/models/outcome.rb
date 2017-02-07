class Outcome < ActiveRecord::Base
  include MakesAnnouncements
  belongs_to :poll, required: true
  belongs_to :author, class_name: 'User', required: true

  validates :statement, presence: true
end