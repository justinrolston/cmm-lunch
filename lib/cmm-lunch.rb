require 'Date'

class CmmLunch
  def self.get_menu(rawmenu)
    lines =  rawmenu.split("\n\n")
    menu = {}
    lines.each do |line|
        if Date::DAYNAMES.any?{|d|  line.split("\n")[0].include? d}
          item = line.split("\n")
          menu[item[0].strip.to_sym] = [item[1],item[2]]
        end
    end
    return menu
  end
end
