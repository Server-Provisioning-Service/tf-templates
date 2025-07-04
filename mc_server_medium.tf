# Server Type:    Minecraft
# Server Size:    Medium
# Server Name:    <SERVER_NAME>

resource "aws_instance" "<SERVER_NAME>" {
  ami                    = local.mc_server_ami
  instance_type          = local.mc_medium_type
  vpc_security_group_ids = [aws_security_group.MC_SERVER_SG.id]

  tags = {
    Name = "<SERVER_NAME>"
  }
}