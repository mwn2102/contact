class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string  :name 
      t.string  :phone
      t.string  :email
      t.string  :address
      t.string  :referral
      t.string  :practice_area
      t.text    :description
      t.string  :employee
      t.string  :impression
      t.boolean :called_back, default: false
      t.datetime  :called_at 
      t.boolean  :retained, default: false
      
      t.timestamps null: false
    end
  end
end
