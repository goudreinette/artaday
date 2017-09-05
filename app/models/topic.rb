class Topic < ApplicationRecord
  has_many :artworks

  def self.of_today
    if topic_of_today = Topic.where(date: Date.today).first
      topic_of_today
    else
      topic_of_today = Topic.where(date: nil).sample
      topic_of_today.update(date: Date.today)
      topic_of_today
    end
  end
end
