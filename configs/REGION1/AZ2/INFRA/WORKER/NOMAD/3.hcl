name       = "R1-AZ2-INFRA-WORKER-3"
region     = "R1"
datacenter = "AZ2"
data_dir = "/vagrant/data/REGION1/AZ2/INFRA/WORKER/NOMAD/3"
bind_addr = "127.0.2.23"
advertise {
  http = "127.0.2.23"
  rpc  = "127.0.2.23"
  serf = "127.0.2.23"
}

client {
  enabled       = true
  meta {
    role = "IW"
  }
}

consul {
  address             = "127.0.2.23:8500"
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
