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
(
  $asm_repo          = $asmcheck::params::asm_repo,
  $log               = $asmcheck::params::log,
  $mailto            = $asmcheck::params::mailto,
  $powerpath_kernel  = $asmcheck::params::powerpath_kernel,
  $previous_rpms     = $asmcheck::params::previous_rpms,

) inherits asmcheck::params
{
  include asmcheck::config
}
