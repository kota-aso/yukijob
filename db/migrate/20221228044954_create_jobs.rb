class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string     :shop_name        , null: false
      t.integer    :occupation_id     , null: false
      t.string    :salary     , null: false
      t.integer    :ticket_id     , null: false
      t.integer    :domitory_id     , null: false
      t.string    :phone_number     , null: false
      t.text       :text         , null: false
      t.timestamps
    end
  end
end
