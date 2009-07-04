Factory.define :<%= file_name %> do |f|
<% for attribute in attributes -%>
  # f.<%= attribute.name %> 'Test'
<% end -%>
end
