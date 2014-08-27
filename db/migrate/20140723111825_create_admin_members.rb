class CreateAdminMembers < ActiveRecord::Migration
  def change
    create_table :admin_members do |t|
      t.string :email, null: false
      t.string :email_for_index, null: false
      t.string :hashed_password
      t.boolean :suspended, null: false, default: false

      t.timestamps
    end

    add_index :admin_members, :email_for_index, unique: true
  end
end
