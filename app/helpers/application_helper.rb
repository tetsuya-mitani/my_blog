module ApplicationHelper
  def find_category_title(category_id)
    category = Category.find(category_id)
    category.title
  end
  # viewから共通で呼ぶことができる。controllerからは呼べない。
end
