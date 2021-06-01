class RemovePictureFromPhoto < ActiveRecord::Migration[6.1]
  def change
    remove_column :photos, :picture, :string
  end
end
