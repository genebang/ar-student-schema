require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class UpdateTimestamps < ActiveRecord::Migration
  def change
    add_column :students, :created_at, :timestamp
    add_column :students, :udpated_at, :timestamp
  end
end
