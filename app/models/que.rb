class Que < ActiveRecord::Base
  validates :name, presence: true

  # What this is saying:
  # Let's find all of the names that contain ?
  # scope :funk_names, -> { where("name like ?", "%Funk%") }
  def self.search_names(search)
    where("name like ?", "%#{search}%")
  end

  def display_name
    "Mr. #{name}"
  end

  include Workflow
  workflow do
    state :new do
      event :nick_visit, transitions_to: :in_progress
    end
    state :in_progress do
      event :nick_leave, transitions_to: :completed
      event :nick_tried_helping, transitions_to: :still_confused
    end
    state :still_confused do
      event :nick_visit, transitions_to: :in_progress
    end
    state :completed
  end  
end
