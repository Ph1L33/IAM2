#create a group membership template that you can link .tfvars to

resource "aws_iam_group_membership" "groups" {
    name = "groups"
    group = aws_iam_group.groups.name
      users = [
    aws_iam_user.user_one.name,
    aws_iam_user.user_two.name,
    aws_iam_user.user_three.name,
    aws_iam_user.user_four.name
  ]
} #"groups" is what i need linked to the .tfvars file
