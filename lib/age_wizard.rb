module AgeWizard
  def self.age(d1, d2, output=:years)
    case output
    when :years
      tmp = d2.year - d1.year
      tmp -= 1 if d2.month < d1.month || (d1.month == d2.month && d2.day < d1.day)
    end
    return tmp
  end
end