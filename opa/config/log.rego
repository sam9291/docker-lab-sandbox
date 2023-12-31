package log

import future.keywords.in

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

get_attributes(custom_accepted_attribute) = result {
    combined_accepted_attributes := array.concat(accepted_attributes, custom_accepted_attribute);

    result := {
        "allowed": [ key | key = input.attributes[_]; key in combined_accepted_attributes ],
        "refused": [ key | key = input.attributes[_]; not key in combined_accepted_attributes ]
    }
}