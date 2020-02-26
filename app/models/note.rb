class Note < ApplicationRecord
  belongs_to :plan

  def fix_time
    t = self.time
    t.strftime("%I:%M%p")
  end
end
