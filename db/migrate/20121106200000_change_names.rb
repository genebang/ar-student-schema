require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class ChangeNames < ActiveRecord::Migration
  
  def up
    add_column :students, :name, :string
    add_column :students, :address, :string

    Student.all.each do |student|
      name = student.first_name + ' ' + student.last_name
      student.update_attributes!(:name => name)
    end

    remove_column :students, :first_name
    remove_column :students, :last_name
  end
  
  def down
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string

    Student.all.each do |student|
      names = student.name.split(' ')
      student.update_attributes!(:first_name => names.shift, :last_name => names.join(' '))
    end

    remove_column :students, :name
    remove_column :students, :address
  end
  
end
