class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, unique: true

      t.string :uid, unique: true
      t.string :provider

      t.timestamps
    end
  end
end
