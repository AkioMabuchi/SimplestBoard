class Post < ApplicationRecord
  validates :body, {presence: true}
  validates :name, {presence: true}
  validates :title, {presence: true}
  
  def responses
    return Post.where(respond_id: self.id)
  end
end
