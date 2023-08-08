package trace

import future.keywords.if
import future.keywords.in
import data.policy.policy_allow

default allow := false
    
attributes := result {
    accepted_attributes := [
        "traceId",
        "droppedLinksCount",
        "kind",
        "droppedEventsCount",
        "traceGroupFields.endTime",
        "traceGroupFields.durationInNanos",
        "traceGroupFields.statusCode",
        "serviceName",
        "parentSpanId",
        "spanId",
        "traceState",
        "startTime",
        "links",
        "endTime",
        "droppedAttributesCount",
        "durationInNanos",
        "events",
        "status.code"    
    ]

    result := {
        "allowed": [ key | key = input.attributes[_]; key in accepted_attributes ],
        "refused": [ key | key = input.attributes[_]; not key in accepted_attributes ]
    }
}

allow {
    policy_allow
}