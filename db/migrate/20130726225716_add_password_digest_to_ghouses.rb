class AddPasswordDigestToGhouses < ActiveRecord::Migration
  def change
    add_column :ghouses, :password_digest, :string
  end
end
