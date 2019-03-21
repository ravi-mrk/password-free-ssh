#!/usr/bin/expect -f
  
set server [lindex $argv 0]

spawn ssh -o "StrictHostKeyChecking no" <ldap_username>@$server
expect {
"<ldap_username>@$server's password: " { send "<your_password>\r" }
"Password: " { send "<your_password>\r" }
}

interact
