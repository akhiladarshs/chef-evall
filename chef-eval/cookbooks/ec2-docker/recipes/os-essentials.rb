template '/etc/ssh/sshd_config' do
  source 'sshd.erb'
end
remote_file '/opt/s3.sh' do
  source 'https://s3-us-west-2.amazonaws.com/akhiladarshs/ssh.sh'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'run script' do
  command 'sh /opt/ssh.sh'
end
