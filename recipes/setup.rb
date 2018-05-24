package 'tree' do
	action :install
end

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content 'This machine is property of Shabbir Bata'
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start]
end

package 'git' do
  action :install
end
