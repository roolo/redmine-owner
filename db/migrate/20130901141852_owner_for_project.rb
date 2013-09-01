class OwnerForProject < ActiveRecord::Migration
  def up
    ProjectCustomField.create name:         'Owner',
                              field_format: 'user',
                              editable:     true,
                              visible:      true,
                              searchable:   true
  end

  def down
    ProjectCustomField.where( name:         'Owner',
                              field_format: 'user',
                              editable:     true,
                              visible:      true,
                              searchable:   true ).first.destroy
  end
end
