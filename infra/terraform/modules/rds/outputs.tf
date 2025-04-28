output "rds_cluster_endpoint" {
  value = aws_rds_cluster.this.endpoint
}

output "rds_cluster_id" {
  value = aws_rds_cluster.this.id
}
