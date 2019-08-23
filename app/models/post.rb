class Post < ApplicationRecord
  belongs_to :user
  belongs_to :policy

  has_many :posts, foreign_key: :poster_id, class_name: "Comment"
  has_many :commenters, through: :posts

  has_many :comments, foreign_key: :commenter_id, class_name: "Comment"
  has_many :posters, through: :comments

end
