class AddQuickactionToContext < ActiveRecord::Migration
  def self.up
      add_column :contexts, :in_quickaction, :boolean
      execute 'update contexts set in_quickaction = 0 where in_quickaction IS NULL'
  end
  def self.down
      remove_column :contexts, :in_quickaction
  end
end
