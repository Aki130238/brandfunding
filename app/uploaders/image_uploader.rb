class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "users/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_limit => [300, 300]

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def default_url
    "default_user.png"
  end
end
