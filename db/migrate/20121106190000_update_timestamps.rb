require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class UpdateTimestamps < ActiveRecord::Migration
  def change
    add_column :students, :created_at, :datetime
    add_column :students, :updated_at, :datetime
  end
  # def up
  #   add_column :students, :created_at, :datetime
  #   add_column :students, :updated_at, :datetime
  # end
  # def down
  #   remove_column :students, :created_at
  #   remove_column :students, :updated_at
  # end
end
