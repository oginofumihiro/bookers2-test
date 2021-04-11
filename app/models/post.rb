class Post < ApplicationRecord
  d
  
  def self.search(keyword)
  where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
