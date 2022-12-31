class Job < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :domitory
  belongs_to :ticket
  belongs_to :user

  validates :shop_name, :salary, :phone_number, :text, presence: true

  validates :occupation_id, :domitory_id, :ticket_id, numericality: { other_than: 1 , message: " を入力してください"}

end
