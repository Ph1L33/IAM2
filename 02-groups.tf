#This is to create dry script building "groups" with the group's names(s) in the .tfvars. file

resource "aws_iam_group" "groups" {
    name = "groups" 
}