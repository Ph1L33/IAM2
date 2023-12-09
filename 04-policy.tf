# This is 1 of 2 Permission policies for users to utilize
resource "aws_iam_user_policy" "policy_one" {
  name        = "policy_one"
  user =  "user_one" #I need help using python variables to link with the .tfvars file
 

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:DescribeInstances", 
         "ec2:DescribeImages",
         "ec2:DescribeTags", 
         "ec2:DescribeSnapshots"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

# This is 2 of 2 Permission policies for users to utilize
# Second user policy to link to the .tfvars file
resource "aws_iam_user_policy" "policy_two" {
  name        = "policy_two"
  user =  "user_two" #I need help using python variables to link with the .tfvars file

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
            "Effect": "Allow",
            "Action": [
                "ecr:*",
                "cloudtrail:LookupEvents"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole"
            ],
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": [
                        "replication.ecr.amazonaws.com"
                    ]
                }
            }
        }
    ]
  }
  )
  }