require 'Date'

class CmmLunch
  DOUBLE_BREAK = "\n\n"
  SINGLE_BREAK = "\n"

  def self.menu(rawmenu)
    menu = {}
    rawmenu.split(DOUBLE_BREAK).each do |line|
      if lunch_line?(line)
        item = line.split(SINGLE_BREAK)
        menu[item[0].strip.to_sym] = [item[1],item[2]]
      end
    end
    return menu
  end

  private
  def self.lunch_line?(entry_line)
    return Date::DAYNAMES.any?{|day|  entry_line.split(SINGLE_BREAK)[0].include? day}
  end
end
