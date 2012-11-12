require 'date'

class Isikukood
  
  attr_reader :code
  
  def initialize(code)
    @code = code.to_s
  end
  
  def valid?
    code.size == 11 && code[10].chr.to_i == control_code && birth_date.is_a?(Date)
  end
  
  def birthday
    return nil unless valid?
    birth_date.to_s
  end
  
  def age
    return nil unless valid?
    now = Time.now.utc
    correction = now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day) ? 0 : 1
    now.year - birth_date.year - correction
  end
  
  def sex
    return nil unless valid?
    code[0].to_i.odd? ? 'M' : 'F'
  end
  
  #private
  
  def control_code
    scales1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1]
    checknum = scales1.each_with_index.map {|scale, i| code[i].chr.to_i * scale}.inject(0, :+) % 11
    return checknum unless checknum == 10
    
    scales2 = [3, 4, 5, 6, 7, 8, 9, 1, 2, 3]
    checknum = scales2.each_with_index.map {|scale, i| code[i].chr.to_i * scale}.inject(0, :+) % 11
    checknum == 10 ? 0 : checknum
  end
  
  def birth_date
    year, month, day = century + code[1..2].to_i, code[3..4].to_i, code[5..6].to_i
    Date.valid_date?(year, month, day) ? Date.strptime("#{year}-#{month}-#{day}", '%Y-%m-%d') : nil
  end
  
  def century
    case code[0].chr.to_i
    when 1..2 then 1800
    when 3..4 then 1900
    else
      2000
    end
  end
end
