resource "aws_key_pair" "key_auth" {
  key_name   = "key_auth"
  public_key = file("key.pub")
}