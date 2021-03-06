class Restaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  has_many :reviews

  # Search method that looks for the name of restaurants in the appropriate database field
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

  has_attached_file :restaurant_img, styles: { restaurant_index: "300x300>", restaurant_show: "600x600>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :restaurant_img, content_type: /\Aimage\/.*\z/
end
