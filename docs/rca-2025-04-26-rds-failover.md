| Field | Details |
|:---|:---|
| Incident Date | 2025-04-26 |
| Affected Services | CloudNova Backend API (Database Layer) |
| Impact | API responses were delayed or failed for 3 minutes during failover. |
| Root Cause | Aurora RDS cluster performed automatic failover during AWS maintenance window. |
| Immediate Action Taken | No manual action required; RDS automatic failover completed. |
| Final Resolution | Verified DB Cluster status.<br>Increased connection timeout values in backend service configuration. |
| Prevention Plan | - Enabled RDS Multi-AZ Cluster endpoints.<br>- Adjusted retry logic in backend service.<br>- Added RDS Event Notifications to Slack via SNS. |
| RCA Owner | Joshua Veeraiah |
