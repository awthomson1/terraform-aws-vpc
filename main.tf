provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "private" {
  count = var.private_subnet_count
  cidr_block = var.private_subnet_cidr_blocks[count.index]
  vpc_id = aws_vpc.main.id
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${var.vpc_name}-private-${count.index + 1}"
  }
}

# resource "aws_route_table_association" "public" {
#  count          = var.public_subnet_count
#  subnet_id      = aws_subnet.public[count.index].id
#  route_table_id = aws_route_table.public.id
# }

resource "aws_security_group" "vpc" {
  name_prefix = var.vpc_name

  tags = {
    Name = "${var.vpc_name}-default-security-group"
  }
}
 
# output "vpc_id" {
#   value = aws_vpc.main.id
# }


# output "private_subnet_ids" {
#   value = aws_subnet.private[*].id
# }

