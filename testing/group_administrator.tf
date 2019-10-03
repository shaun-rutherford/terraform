resource "aws_iam_group" "Administrators" {
  name = "Administrators"
  path = "/Groups/Administrators/"
}

resource "aws_iam_group_policy_attachment" "Administrators_AmazonEC2FullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_AmazonRDSFullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_IAMFullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_AmazonS3FullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_CloudWatchFullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_AmazonDynamoDBFullAccess" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_group_policy_attachment" "Administrators_IAMUserChangePassword" {
  group = "${aws_iam_group.Administrators.name}"
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
}