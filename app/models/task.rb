class Task < ApplicationRecord
  belongs_to :project, dependent: :destroy
  
  def date
    self.deadline.strftime("%Y年%m月%d日%a")
  end
  
  def time
    self.deadline_time.strftime("%H:%M")
  end
  
end
