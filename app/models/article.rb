class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  def to_param
    [self.id, self.title.parameterize].join("-")
  end
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
