# Build for small Minecraft server

resource "aws_instance" "MC_SERVER_SMALL" {
  ami                    = local.mc_server_ami
  instance_type          = local.mc_small_type
  vpc_security_group_ids = [aws_security_group.MC_SERVER_SMALL_SG.id]

  tags = {
    Name = "<SERVER_NAME>"
  }
}