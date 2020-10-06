class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :client_id
      t.string :event_name
      t.text :event_description
      t.string :event_image
      t.string :slug
      t.datetime :start_date
      t.datetime :publication_date
      t.string :publication_state
      t.integer :tickets_avaible
      t.integer :ticket_price

      t.timestamps
    end
  end
end
