class Article < ApplicationRecord
	   mount_uploader :image, ImageUploader
	   has_many :comments


def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    all
   end
end

end
