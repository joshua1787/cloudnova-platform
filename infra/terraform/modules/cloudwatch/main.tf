resource "aws_cloudwatch_metric_alarm" "cpu_utilization_high" {
  alarm_name          = "${var.project_name}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = 60
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Alarm when ECS CPU > 70%"
  actions_enabled     = true
  dimensions = {
    ClusterName = var.ecs_cluster_name
    ServiceName = var.project_name
  }
}

resource "aws_cloudwatch_metric_alarm" "memory_utilization_high" {
  alarm_name          = "${var.project_name}-high-memory"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "MemoryUtilization"
  namespace           = "AWS/ECS"
  period              = 60
  statistic           = "Average"
  threshold           = 75
  alarm_description   = "Alarm when ECS Memory > 75%"
  actions_enabled     = true
  dimensions = {
    ClusterName = var.ecs_cluster_name
    ServiceName = var.project_name
  }
}