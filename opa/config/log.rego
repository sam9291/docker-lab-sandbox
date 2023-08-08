package log

import future.keywords.if
import future.keywords.in
import data.policy.policy_allow

default allow := false

attributes := result {
    accepted_attributes := [
        "traceId",
        "spanId",
        "flags",
        "time",
        "severityNumber",
        "droppedAttributesCount",
        "serviceName",
        "observedTime",
        "schemaUrl",
        "log.attributes.RequestId",
        "log.attributes.dotnet@ilogger@category"  
    ]

    result := {
        "allowed": [ key | key = input.attributes[_]; key in accepted_attributes ],
        "refused": [ key | key = input.attributes[_]; not key in accepted_attributes ]
    }
}

allow {
    policy_allow
}