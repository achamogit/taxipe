class Driver < ActiveRecord::Base
  belongs_to :state
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, :default_url => "/images/:style/missing.png"
  
  # Validate presence
  validates :image, :attachment_presence => true

  # Validate content type
  validates_attachment_content_type :image,
  :content_type => /\Aimage\/.*\Z/
  
  # Validate two or more conditions
  validates_attachment :image, :presence => true,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
  :size => { :in => 0..10.kilobytes }

end
