class Alcool < ActiveRecord::Base
  validates_presence_of :name, :quantity, :limit_alcool
  validates_numericality_of :quantity, :limit_alcool  
end
