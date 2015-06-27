class Entry < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/default.jpg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  #before_validation :set_image

  def set_image
    StringIO.open(picture) do |data|
      data.class.class_eval { attr_accessor :original_filename, :content_type }
      data.original_filename = "temp#{DateTime.now.to_i}.png"
      data.content_type = "image/png"
      self.picture = data
    end
  end
end
