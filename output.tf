resource "null_resource" "publicip"  {
	provisioner "local-exec" {
	    command = "echo  ${aws_instance.wordpress.public_ip} > publicip.txt"
  	}
}

resource "null_resource" "privateip"  {
	provisioner "local-exec" {
	    command = "echo  ${aws_instance.mysql.private_ip} > privateip.txt"
  	}
}

resource "null_resource" "nulllocal1"  {
	provisioner "local-exec" {
	    command = "start chrome  ${aws_instance.wordpress.public_ip}"
  	}
	  depends_on = [
    aws_instance.wordpress
  ]
}

output "wordpressid"{
  value=aws_instance.wordpress.id
}

output "mysqlid"{
  value=aws_instance.mysql.id
}