job "hello" {
  type = "batch"
  group "worker" {
    task "hello_world" {
      driver = "exec"
      config {
        command = "echo"
        args = ["hello", "world"]
      }
    }
  }
}
