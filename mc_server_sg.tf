resource "aws_security_group" "MC_SERVER_SMALL_SG" {
    name = "MC_SERVER_SMALL_SG"
}

resource "aws_security_group_rule" "MC_SERVER_INBOUND" {
    type        = "ingress"
    from_port   = 25565
    to_port     = 25565
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.MC_SERVER_SMALL_SG.id
}

resource "aws_security_group_rule" "MC_SERVER_OUTBOUND" {
    type        = "egress"
    from_port   = 25565
    to_port     = 25565
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.MC_SERVER_SMALL_SG.id
}

resource "aws_security_group_rule" "SSH_INBOUND" {
    type        = "ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.MC_SERVER_SMALL_SG.id
}

resource "aws_security_group_rule" "SSH_OUTBOUND" {
    type        = "egress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.MC_SERVER_SMALL_SG.id
}

