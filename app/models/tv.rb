class Tv < ActiveRecord::Base
  validates :youtube_url, :title, :description, :published, presence: true
end
