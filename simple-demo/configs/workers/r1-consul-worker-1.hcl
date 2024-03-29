# Setting the Region to R1 to match the server certificate datacenter value
datacenter = "R1"
# server specific data path value
data_dir = "/home/grays/Documents/repos/old/hashistack-multi-tenant-infrastructure-mockup/simple-demo/data/consul/R1/worker/1/"
# Just name of server that consul will register as, should be unique in each config when running multiple agents locally
node_name = "R1-nomad-consul-worker-1"
# set to make this agent not a server
server = false
# addresses to use for various interface settings
advertise_addr = "127.0.1.21"
client_addr    = "127.0.1.21"
bind_addr      = "127.0.1.21"
# use jwt token to authorize itself to consul servers which will then generate connect certificates, tls certificates and gossip key share.
#auto_config {
#    enabled = true
#    intro_token_file = "/vagrant/data/REGION1/AZ1/INFRA/WORKER/CONSUL/1/jwt"
#    server_addresses = ["127.0.1.10","127.0.2.10","127.0.3.10"]
#}
# enable https interface
ports {
  https = 8501
  grpc  = 8502
}
# certificate authority cert to use for validation of trusted certs
# verify the certificate presented by servers connecting
# verify the certificate presented by servers connecint too
# verify the hostname of server certificates
#tls {
#  defaults {
#    ca_file = "/vagrant/data/REGION1/AZ1/INFRA/CONTROL/CONSUL/ca.crt"
#    verify_incoming = true
#    verify_outgoing = true
#  }
#  internal_rpc {
#    verify_server_hostname = true
#  }
#}

acl = {
  enabled = true
  default_policy = "allow"
  enable_token_persistence = true
}

retry_join = ["127.0.1.11"]

auto_encrypt = {
  tls = false
}

encrypt = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="

connect {
  enabled = true
}