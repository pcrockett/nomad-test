job "uid" {
  type = "batch"
  group "worker" {
    task "uid" {
      # using `exec` driver the output of this job is "nobody"
      # using `raw_exec` driver the output of this job is "root"
      driver = "exec"
      config {
        command = "id"
        args = ["--user", "--name"]
      }
    }
  }
}
