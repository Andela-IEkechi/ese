class Article < ActiveRecord::Base
  belongs_to :user

  validates :section, :user_id, :title, :content, presence: true

  scope :monday_mummies, -> { where(section: 'Monday Mummies') }
  scope :abuse_no_more, -> { where(section: 'Abuse No More') }
  scope :child_abuse, -> { where(section: 'Child Abuse') }
  scope :random, -> { where(section: 'Random') }

  SECTIONS = ['Monday Mummies', 'Abuse No More', 'Child Abuse', 'Random']
end
