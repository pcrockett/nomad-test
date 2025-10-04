data_dir = "/opt/nomad"
bind_addr = "0.0.0.0"

client {
  enabled = true
  servers = [
    "server:4647"
  ]
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}
