name       = "R1-AZ2-INFRA-WORKER-2"
region     = "R1"
datacenter = "AZ2"
data_dir = "/vagrant/data/REGION1/AZ2/INFRA/WORKER/NOMAD/2"
bind_addr = "127.0.2.22"
advertise {
  http = "127.0.2.22"
  rpc  = "127.0.2.22"
  serf = "127.0.2.22"
}

client {
  enabled       = true
  meta {
    role = "IW"
  }
}

consul {
  address             = "127.0.2.22:8500"
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
