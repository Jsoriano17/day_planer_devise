class Plan < ApplicationRecord
    belongs_to :user
    has_many :notes, dependent: :destroy

    def fix_date
        @date = self.date
        @date.strftime("%B #{@date.day.ordinalize}, %Y")
    end
end
