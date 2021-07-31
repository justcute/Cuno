class AddTypeToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :type, :string
  end
end
