class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def user
    self.user
  end

end
