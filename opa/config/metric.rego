package metric

import future.keywords.in

accepted_attributes := []

get_attributes(custom_accepted_attribute) = result {
    combined_accepted_attributes := array.concat(accepted_attributes, custom_accepted_attribute);

    result := {
        "allowed": [ key | key = input.attributes[_]; key in combined_accepted_attributes ],
        "refused": [ key | key = input.attributes[_]; not key in combined_accepted_attributes ]
    }
}