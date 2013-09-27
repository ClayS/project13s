class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email_address
      t.string :password_digest

      t.timestamps
    end
  end
end
