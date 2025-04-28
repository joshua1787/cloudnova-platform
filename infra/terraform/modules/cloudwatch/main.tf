resource "aws_cloudwatch_dashboard" "ecs_dashboard" {
  dashboard_name = "${var.project_name}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type = "metric",
        x = 0,
        y = 0,
        width = 12,
        height = 6,
        properties = {
          metrics = [
            [ "AWS/ECS", "CPUUtilization", "ClusterName", "${var.project_name}-cluster" ],
            [ ".", "MemoryUtilization", ".", "." ]
          ],
          view = "timeSeries",
          stacked = false,
          region = var.aws_region,
          title = "ECS Cluster CPU & Memory"
        }
      }
    ]
  })
}
