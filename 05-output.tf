#show output for the iam group
output "group"{
    value = aws_iam_group.groups.name
}

output "user_one"{
    value =     aws_iam_user.user_one.name
    
}

output "user_two"{
    value =     aws_iam_user.user_two.name
    
}

output "user_three"{
    value =     aws_iam_user.user_three.name
    
}

output "user_four"{
    value =     aws_iam_user.user_four.name
    
}


output "Policy_one"{
    value =     aws_iam_user_policy.policy_one.id
    
}

output "Policy_two"{
    value =     aws_iam_user_policy.policy_two.id
    
}