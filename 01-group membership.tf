#create a group membership template that you can link .tfvars to

resource "aws_iam_group_membership" "sargeants" {
    name = "groups"
    group = aws_iam_group.groups.name
      users = [
        type = list(string),
        description = "sargeants names",
        default = aws_iam_user.sargeant.name
  ]
} #"groups" is what i need linked to the .tfvars file

resource "aws_iam_group_membership" "airmen" {
  name = "groups"
    group = aws_iam_group.groups.name
    users = [
      type = list(string),
      description= "airmen names",
      default = aws_iam_user.airmen.name
    ]
}