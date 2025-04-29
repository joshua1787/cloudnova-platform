| Field | Details |
|:---|:---|
| Incident Date | 2025-04-27 |
| Affected Services | CloudNova Frontend (S3 Static Hosting) |
| Impact | Users could not access the frontend website for 10 minutes. |
| Root Cause | Incorrect S3 Bucket Policy accidentally removed public read access. |
| Immediate Action Taken | Updated S3 Bucket Policy to allow public read access for static content. |
| Final Resolution | Added S3 Bucket Policy as Terraform managed code.<br>Applied S3 Block Public Access settings properly. |
| Prevention Plan | - Infrastructure code versioning enforced.<br>- S3 Access Logging enabled.<br>- Monthly IAM Policy Audit. |
| RCA Owner | Joshua Veeraiah |
