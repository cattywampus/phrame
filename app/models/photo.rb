class Photo < ActiveRecord::Base
  has_attached_file :image, {
    storage: :s3,
    url: ':s3_domain_url',
    hash_data: ':class/:attachment/:id/:updated_at',
    hash_secret: 'longSecretString',
    s3_credentials: Rails.root.join('config', 's3.yml'),
    s3_permision: :authenticated_read,
    bucket: "phrame-#{Rails.env}",
    styles: { medium: '300x300>', thumbnail: '100x100>' },
    path: '/:class/:hash/:style.:extension'
  }

  validates_attachment :image, :presence => true,
      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

end
