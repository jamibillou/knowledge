class CreateConstruct < ActiveRecord::Migration
  def up
		create_table :constructs do |t|
 			t.string  :name
 			t.string  :organism
 			t.string  :protein_family
 			t.float 	:size
 			t.float   :pi
 			t.integer :nb_cystein
 			t.text  	:sequence

	  	t.timestamps
	  end
  end

  def down
  end
end
