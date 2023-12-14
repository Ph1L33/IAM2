# This is to link 4 USER placeholders to link to .tfvars file

resource "aws_iam_user" {
    name = "user_one"
    type = list(string)
    description = "user name"
}

resource "aws_iam_user.airmen.name" {
    name = "airmen"
    type =list(string)
    default = []
}

resource "aws_iam_user.sargeant.name" {
    name = "sargeant"
    type = list(string)
    default = []
}