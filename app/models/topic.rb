class Topic < ApplicationRecord
  has_many :artworks

  def self.of_today
    if topic_of_today = Topic.where(date: Date.today)
      topic_of_today
    else
      Topic.where(date: nil).sample.update(date: Date.today)
    end
  end
end
