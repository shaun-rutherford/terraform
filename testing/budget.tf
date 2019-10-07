resource "aws_budgets_budget" "ec2" {
  name = "Billing-ec2-monthly"
  budget_type = "COST"
  limit_amount = "10"
  limit_unit   = "USD"
  time_period_end = "2087-06-15_00:00"
  time_period_start = "2019-10-01_00:00"
  time_unit = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    threshold = 100
    threshold_type = "PERCENTAGE"
    notification_type = "FORECASTED"
    subscriber_email_addresses = ["<email here>"]
  }
}
