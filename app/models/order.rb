class Order < ActiveRecord::Base
  
  # -------------------------------------- Associations
  
  belongs_to :user
  has_and_belongs_to_many :items
  
  # -------------------------------------- Validations
  
  validates_presence_of :user_id
  validate :minimum_items_count
  
  
  # -------------------------------------- Instance Methods
  
  def minimum_items_count
    errors.add(:items, 'must have at least one') unless items.count > 0
  end
  
  
end