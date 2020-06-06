class CreateSubmission < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
    	t.string :url
    	t.text :excerpt
    	t.timestamps
    end
  end
end
