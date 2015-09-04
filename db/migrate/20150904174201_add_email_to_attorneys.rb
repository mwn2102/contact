class AddEmailToAttorneys < ActiveRecord::Migration
  def change
    add_column :attorneys, :email, :string
  end
end
