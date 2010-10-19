class Video < ActiveRecord::Base
  has_attached_file :poster
  has_attached_file :attachment
end
