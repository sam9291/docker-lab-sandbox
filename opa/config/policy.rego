package policy

import future.keywords.if

default policy_allow := false

# Add white list app
policy_allow if {
    input.app.name == "test"
    input.app.environment == "dev"
}

# Add with version to be calculated
policy_allow if {
    input.app.name == "test"
    input.app.version == "1.0.0"
}