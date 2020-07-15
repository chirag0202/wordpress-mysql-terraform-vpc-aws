resource "null_resource" "nulllocal2"  {
	provisioner "local-exec" {
	    command = "echo  ${aws_instance.wordpress.public_ip} > publicip.txt"
  	}
}

resource "null_resource" "nulllocal1"  {
	provisioner "local-exec" {
	    command = "start chrome  ${aws_instance.wordpress.public_ip}"
  	}
}

output "wordpressid"{
  value=aws_instance.wordpress.id
}

output "mysqlid"{
  value=aws_instance.mysql.id
}