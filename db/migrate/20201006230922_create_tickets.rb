class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.string :client_name
      t.string :client_mail
      t.string :confirmation_code

      t.timestamps
    end
  end
end
