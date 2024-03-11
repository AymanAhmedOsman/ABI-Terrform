resource "aws_cloudwatch_metric_alarm" "ec2_cpu_Front-end" {
     alarm_name                = "cpu-utilization"
     comparison_operator       = "GreaterThanOrEqualToThreshold"
     evaluation_periods        = "2"
     metric_name               = "CPUUtilization"
     namespace                 = "AWS/EC2"
     period                    = "120" #seconds
     statistic                 = "Average"
     threshold                 = "70"
     alarm_description         = "This metric monitors ec2 cpu utilization"
     alarm_actions     = [aws_sns_topic.example.arn]
     insufficient_data_actions = []
dimensions = {
       InstanceId = aws_instance.Front-end.id
     }
     
}


resource "aws_cloudwatch_metric_alarm" "ec2_cpu_backend" {
     alarm_name                = "cpu-utilization"
     comparison_operator       = "GreaterThanOrEqualToThreshold"
     evaluation_periods        = "2"
     metric_name               = "CPUUtilization"
     namespace                 = "AWS/EC2"
     period                    = "120" #seconds
     statistic                 = "Average"
     threshold                 = "70"
     alarm_description         = "This metric monitors ec2 cpu utilization"
     alarm_actions     = [aws_sns_topic.example.arn]

     insufficient_data_actions = []
dimensions = {
       InstanceId = aws_instance.backend.id
     }
}