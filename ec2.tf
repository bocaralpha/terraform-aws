resource "aws_key_pair" "admin" {
   key_name   = "admin"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6V05XMvdVdmoQ1UfD+QxNJkHFeQkUhIu2iQ3ObMOAiK/8WsXpRCA7pwn9t3kZA457BtUzXUqPzUyu4jK/MoagT80pG3J5oAuXJ9LDeqspak1/PZ7qNlnaMgSl3vcVDt5yZaguqjuHJME+OQ0T+mVc4XJNyEt6Am41xcE2z3bVugyImrZfJ8CgHdsrfO/0+KolbY/nk8j2DLTtjVudoAcURfG1IY8ooLYRY3h695LYxmHQ/4g9NdV0W9hS7txrBhQFrw6thQb26WACDK41FlbKfr6RvQCCEd6E+XZvokvy2rYHvgYZnzDAfb/Od2vs8PrKH1ErR8rtpknuPjD6Jc5Jbb9c0b2n@DSP0954725"
 }
 resource "aws_instance" "server1" {
   ami           = "ami-0022c769"
   instance_type = "t2.micro"
   key_name      = "admin"
 }