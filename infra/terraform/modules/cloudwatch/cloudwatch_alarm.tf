resource "aws_cloudwatch_metric_alarm" "ecs_error_alarm" {
  alarm_name          = "${var.project_name}-ECS-Error-Alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = aws_cloudwatch_log_metric_filter.ecs_error_filter.metric_transformation[0].name
  namespace           = aws_cloudwatch_log_metric_filter.ecs_error_filter.metric_transformation[0].namespace
  period              = "60"
  statistic           = "Sum"
  threshold           = "1"
  alarm_description   = "Alarm when ECS container logs show ERROR."
  alarm_actions       = []   # (Later you can add SNS topic ARN here to send email or sms alerts)
}