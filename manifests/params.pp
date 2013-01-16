# ===Class: asmcheck::params
#
# State your Deploys asmcheck.sh to query Oracle's website for the asm package
class asmcheck::params
{
  $asm_repo          = '/var/www/html/asmrepo/5Server/x86_64'
  $log               = '/tmp/asmcheck.log'
  $mailto            = 'linuxgurus@host.com'
  $powerpath_kernel  = '2.6.blah'
  $previous_rpms     = '2'
}
