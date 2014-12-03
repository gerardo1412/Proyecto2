class Item < ActiveRecord::Base

  has_many :posts
  has_attached_file :foto, :styles => { :medium => "180x260>" },:default_url => "/images/:style/missing.png"  ,  :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"]
  validates_attachment_file_name :foto, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/, /jpg\Z/]
end
