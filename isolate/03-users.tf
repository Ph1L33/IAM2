# This is to link 4 USER placeholders to link to .tfvars file

resource "aws_iam_user" "user_one" {
    name = "user_one"
}
output "secret_key"{
    value = aws_iam_access_key.key.secret
        sensitive = true
}

resource  "aws_iam_user" "user_two" {
    name = "user_two"
}

resource  "aws_iam_user" "user_three" {
    name = "user_three"
}

resource  "aws_iam_user" "user_four" {
    name = "user_four"
}