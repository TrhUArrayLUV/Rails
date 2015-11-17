class LuvList < ActiveRecord::Base
  has_many :luvli_items, dependent: :destroy

  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :description, presence: true
  validates :description, length: { maximum: 144 }

  def has_completed_items?
    luvli_items.complete.size > 0
  end

  def has_incompleted_items?
    luvli_items.incomplete.size > 0
  end

end
