resource "aws_sns_topic" "example" {
  name = "CPUUtilizationTopic"
}

# Create an Amazon SNS subscription to receive email notifications
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.example.arn
  protocol  = "email"
  endpoint  = "your-email@example.com"  # Update with your email address
}