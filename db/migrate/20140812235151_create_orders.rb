class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :instagram_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
