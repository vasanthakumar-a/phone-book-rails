class Contact < ApplicationRecord

  has_one_attached :image

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, length: { is: 10 }
  validates :email, presence: true
  validates :company_name, presence: true
  validates :address, presence: true, length: { minimum: 10 }

  validates_uniqueness_of :phone_number, :email


  # validates :image, presence: true, blob: { content_type: 'image/jpg' }

  validate :is_image

  private
  def is_image
    if image.attached? && !image.content_type.in?(%w(image/jpeg image/jpg image/png image/webp))
      image.destroy
      errors.add(:image, "Must Add Only Images with Jpeg/Png format")
    end
  end

end
