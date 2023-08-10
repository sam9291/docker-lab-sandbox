package trace

import future.keywords.in

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

get_attributes(custom_accepted_attribute) = result {
    combined_accepted_attributes := array.concat(accepted_attributes, custom_accepted_attribute);

    result := {
        "allowed": [ key | key = input.attributes[_]; key in combined_accepted_attributes ],
        "refused": [ key | key = input.attributes[_]; not key in combined_accepted_attributes ]
    }
}