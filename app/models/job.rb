class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :domitory
  belongs_to :ticket

  validates :shop_name, :salary, :phonenumber, :text, presence: true

  validates :occupation_id, :domitory_id, :ticket_id, numericality: { other_than: 1 , message: "can't be blank"}

end
