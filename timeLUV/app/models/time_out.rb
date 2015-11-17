class TimeOut < ActiveRecord::Base
    has_paper_trail
    belongs_to :teacher
    belongs_to :kid

    validates_associated :kid
    validates :length, numericality: {greater_than: 0}
    before_create :calculate_duration

    def calculate_duration
      self.length = TimeOut.start_time_out - TimeOut.end_time_out
      if self.length > 24
        return false
      end
      true
    end

end
