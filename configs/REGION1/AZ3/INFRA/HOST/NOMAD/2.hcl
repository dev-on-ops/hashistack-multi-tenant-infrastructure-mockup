name       = "R1-AZ3-INFRA-HOST-2"
region     = "R1"
datacenter = "AZ3"
data_dir = "/vagrant/data/REGION1/AZ3/INFRA/HOST/NOMAD/2"
bind_addr = "127.0.3.12"
advertise {
  http = "127.0.3.12"
  rpc  = "127.0.3.12"
  serf = "127.0.3.12"
}

client {
  enabled       = true
  meta {
    role = "IH"
  }
}

consul {
  address             = "127.0.3.12:8500"
  server_service_name = "nomad"
  client_service_name = "nomad-client"
  auto_advertise      = true
#  server_auto_join    = true
  client_auto_join    = true
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}
