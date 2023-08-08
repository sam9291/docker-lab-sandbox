package policy

import future.keywords.if

default policy_allow := false

policy_allow if {
    input.app.name == "test"
    input.app.environment == "dev"
}

policy_allow if {
    input.app.name == "test"
    input.app.version == "1.0.0"
}