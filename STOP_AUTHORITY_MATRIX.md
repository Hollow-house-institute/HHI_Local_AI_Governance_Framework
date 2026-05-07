# STOP_AUTHORITY_MATRIX

| Trigger Condition | Escalation Threshold | Stop Authority Action | Evidence Produced |
|---|---|---|---|
| Behavioral Drift exceeds threshold | Drift score > 70 | Pause runtime session | Drift log |
| Unsafe recommendation persistence | Repeated unsafe outputs | Interrupt interaction | Escalation record |
| Child safety violation | Restricted interaction detected | Lock session | Incident trace |
| Human override request | Manual escalation | Immediate stop authority | Intervention log |
| Telemetry continuity failure | Logging interruption | Enter restricted mode | Assurance alert |

## Governance Principle

Stop Authority must remain executable during runtime operation.

Governance that cannot interrupt behavior during execution becomes post-hoc observation instead of operational control.
