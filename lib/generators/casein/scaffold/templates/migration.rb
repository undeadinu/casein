class Create<%= class_name.pluralize %> < ActiveRecord::Migration[<%= Rails::VERSION::MAJOR %>.<%= Rails::VERSION::MINOR %>]
  def change
    create_table :<%= table_name %> do |t|
<% attributes.each do |attribute| %>      t.<%= attribute.type %> :<%= attribute.name %>
<% end %>
      t.timestamps
    end
  end
end
