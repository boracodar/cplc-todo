class Task < ApplicationRecord
  validates :description, presence: true
  validates :done, inclusion: { in: [true, false] }

  def symbol
    case status
    when 'pending' then '»'
    when 'done'    then '✓'
    when 'expired' then '✕'
    end
  end

  def css_color
    case status
    when 'pending' then 'primary'
    when 'done'    then 'success'
    when 'expired' then 'danger'
    end
  end

  private

  def status
    return 'done' if done?

    due_date.past? ? 'expired' : 'pending'
  end
end
