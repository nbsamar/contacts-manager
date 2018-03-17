class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :givenName
      t.string :familyName
      t.string :email
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
