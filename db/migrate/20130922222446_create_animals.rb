class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.boolean :special_needs
      t.string :location_city
      t.string :location_state
      t.string :destination_city
      t.string :destination_state
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.string :contact_affiliation
      t.text :additional_notes

      t.timestamps
    end
  end
end
