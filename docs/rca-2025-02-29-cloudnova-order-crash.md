Incident Date: 2025-04-29
Affected Services: cloudnova-order-service (ECS Fargate)
Impact: Customers could not place orders for 5 minutes.
Root Cause: ECS Task ran out of memory (512MB was too low).
Immediate Action: Manually restarted the ECS service.
Final Resolution: Increased ECS Task Memory to 1024MB and redeployed.
Prevention Plan: Setup CloudWatch alarms for > 80% memory and added auto-scaling.
Owner: Joshua Veeraiah
