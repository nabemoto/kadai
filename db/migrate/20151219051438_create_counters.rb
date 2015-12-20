class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :site_name

      t.timestamps 
    end
  end
end
