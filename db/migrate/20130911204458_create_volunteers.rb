class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :affiliation
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
