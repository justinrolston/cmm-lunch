require 'Date'

class CmmLunch
  def self.get_menu(rawmenu)
    lines =  rawmenu.split("\n\n")
    menu = {}
    lines.each do |line|
      if lunch_line?(line)
        item = line.split("\n")
        menu[item[0].strip.to_sym] = [item[1],item[2]]
      end
    end
    return menu
  end

  private
  def self.lunch_line?(entry_line)
    return Date::DAYNAMES.any?{|d|  entry_line.split("\n")[0].include? d}
  end
end
