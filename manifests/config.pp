# ===Class: asmcheck
#
# Deploys asmcheck.sh to query Oracle's website for the asm package
#
# ===Parameters: 
#
# -none 
#
# ===Actions:
#    
# ===Requires:
#
# ===Sample Usage:
# 
class asmcheck 
{
  # cron to run asmcheck.sh
  cron { "Check for new Oracle ASM packages (RHEL5 x86_64)":
         command => "/usr/local/bin/asmcheck.sh 2>/dev/null 1>/dev/null",
         user    => "root",
         hour    => 5,
         minute  => 0,
         weekday => "*",
	   }

  # script to check for new Oracle ASM packages
  file { "Script to check for new Oracle ASM packages (RHEL5 x86_64)":
         path    => "/usr/local/bin/asmcheck.sh",
         owner   => "root",
         group   => "root",
         mode    => "0750",
         content => template("asmcheck/asmcheck.sh.erb"),
       }
}
