class Author < ApplicationRecord

  has_many :books

  validates :first_name, presence: true
  validates :last_name, presence: true

  before_validation :strip_name
  before_validation :titleize_name

  def full_name
    "#{first_name} #{last_name}"
  end

  def strip_name
    self.first_name = first_name.strip
    self.last_name = last_name.strip
  end

  def titleize_name
    self.first_name = first_name.titleize
    self.last_name = last_name.titleize
  end
end
