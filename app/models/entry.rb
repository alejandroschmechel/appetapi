class Entry < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/default.jpg"
  do_not_validate_attachment_file_type :picture

  def avatar_url
    picture.url(:thumb)
  end
end
