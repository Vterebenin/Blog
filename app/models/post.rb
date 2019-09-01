class Post < ApplicationRecord
	#scope :mostcommented, order('comments_count DESC')
	scope :most_commented, -> {
  	order('comments_count DESC')
	}
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum:5}
	validates :body, presence: true
	has_rich_text :body
	mount_uploader :top_picture, TopPictureUploader
end
