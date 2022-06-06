name       = "R1-AZ1-INFRA-CONTROL-1"
region     = "Region1"
datacenter = "AZ1"
data_dir = "/vagrant/data/REGION1/AZ1/INFRA/CONTROL/NOMAD/1"
bind_addr = "127.0.1.10"
advertise {
  http = "127.0.1.10"
  rpc  = "127.0.1.10"
  serf = "127.0.1.10"
}
server {
  enabled          = true
  bootstrap_expect = 3
  encrypt = "o04ySMDpvZvHS6kVPEFTAHpHPf2A1y+cRoqO6WFUUs4="
  server_join {
    retry_join     = [ "127.0.2.10", "127.0.3.10" ]
    retry_max      = 0
    retry_interval = "30s"
  }
}
