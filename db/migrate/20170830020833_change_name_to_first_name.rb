class ChangeNameToFirstName < ActiveRecord::Migration[5.1]
  def change
                #table    #column  #new_column    
    rename_column :contacts, :name, :first_name
  end
end