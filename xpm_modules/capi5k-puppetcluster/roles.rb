# define your roles here as methods  (this allow roles to be overwritten)
#
# follow the convention :
#
# def role_myrole 
#   $myxp.get_deployed_nodes('myxprole')
# end
#
#
def role_puppet_master
  $myxp.get_deployed_nodes('capi5k-init').first
end

def role_puppet_clients
  $myxp.get_deployed_nodes('capi5k-init').slice(1..-1)
end

def puppet_version
  "3.5.1"
end


