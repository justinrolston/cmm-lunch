require 'test/unit'
require 'cmm-lunch'

class CmmLunchTest < Test::Unit::TestCase
  def test_for_single_monday
    result = {:Monday => ["burger", "fries"]}
    input = "Good afternoon!\n\nHere is the menu for this week.\n\nMonday\nburger\nfries"
    assert_equal result, CmmLunch.get_menu(input)
  end

  def test_for_multiple_days
    result = {}
    result[:Monday] = ["Broccoli cheddar soup with rolls","Butter lettuce, blueberries, hearts of palm, strawberries, spiced pecans"]
    result[:Tuesday] = ["Roasted chicken with spinach, tomatoes and pesto cream served with orzo","Mesclun, cucumber, artichokes, olives, pine nuts"]
    result[:Wednesday] = ["Ham and Brie on croissant with apples and whole grain mustard, served with pretzels","Arugula, black berries, walnuts, cucumber, asparagus"]
    result[:Thursday] = ["Barbacoa beef with rice, black beans, corn salsa, tortilla chips","Romaine, avocado, tomato, pepitas, feta"]
    result[:Friday] = ["Cornmeal crusted tilapia with Old bay cream sauce served with roasted red skin potatoes","Mixed greens, bell pepper, onion,  celery, hard boiled egg"]
    input = "Good afternoon!\n\nHere is the menu for this week. Please  let me know if you will have any guests.\n\nMonday\nBroccoli cheddar soup with rolls\nButter lettuce, blueberries, hearts of palm, strawberries, spiced pecans\n\nTuesday\nRoasted chicken with spinach, tomatoes and pesto cream served with orzo\nMesclun, cucumber, artichokes, olives, pine nuts\n\nWednesday \nHam and Brie on croissant with apples and whole grain mustard, served with pretzels\nArugula, black berries, walnuts, cucumber, asparagus\n\nThursday\nBarbacoa beef with rice, black beans, corn salsa, tortilla chips\nRomaine, avocado, tomato, pepitas, feta\n\nFriday\nCornmeal crusted tilapia with Old bay cream sauce served with roasted red skin potatoes\nMixed greens, bell pepper, onion,  celery, hard boiled egg\n\nThanks!\nBecky\n\n\nSent from my iPad\n"
    menu = CmmLunch.get_menu(input)

    assert_equal result, menu
  end
end
