class Comment < ApplicationRecord
  belongs_to :poster, class_name: "Post"
  belongs_to :commenter, class_name: "Post"



end
