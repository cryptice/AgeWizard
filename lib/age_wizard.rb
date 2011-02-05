module AgeWizard
  
  SECS_PER_DAY = 60 * 60 * 24
  
  def self.age(d1, d2, output=:years)
    year_diff = d2.year - d1.year
    year_diff -= 1 if d2.month < d1.month || (d1.month == d2.month && d2.day < d1.day)
    case output
    when :years
      year_diff
    when :months
      month_diff = year_diff * 12
      if d2.day < d1.day
        month_diff -= 1
        month_diff += 12 if (d1.year != d2.year && year_diff == 0)
        month_diff
      end
      month_diff += d2.month - d1.month
    when :days
      (d2.to_f - d1.to_f).to_i / SECS_PER_DAY
    end
  end
end