include_recipe "java"

ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("/etc/profile")
    file.insert_line_if_no_match("/PATH=/usr/lib/jvm/jdk1.7.0_71/bin:$PATH/", "PATH=/usr/lib/jvm/jdk1.7.0_71/bin:$PATH")
    file.write_file
  end
end

cookbook_file "atom_install64.sh" do
  path "/atom_install64.sh"
  action :create_if_missing
end