class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_attached_file :avatar,
                 :styles => { :medium => "150x150>", :thumb => "80x80#" },
                 :storage => :s3,
                 :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
                 :path => "avatars/:id/:style/avatar.:extension",
                 :default_url => "https://s3.amazonaws.com/buybuybulldog/defaults/default_avatar.png"

		
  	 validates_attachment :avatar,
                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                      :size => { :in => 0..1000.kilobytes }

    def s3_credentials
 		{ :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET'] }
	end


end
