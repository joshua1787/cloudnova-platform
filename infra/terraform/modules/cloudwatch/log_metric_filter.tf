resource "aws_cloudwatch_log_metric_filter" "ecs_error_filter" {
  name           = "${var.project_name}-ecs-error-filter"
  log_group_name = "/ecs/${var.project_name}"

  pattern = "?ERROR ?Error ?error"

  metric_transformation {
    name      = "EcsErrorCount"
    namespace = "ECS/Errors"
    value     = "1"
  }
}