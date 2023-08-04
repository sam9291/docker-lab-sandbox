package policy

allow[result] {
    input.action.id == "HR"
    result = "allow HR"
}
allow[result] {
    input.action.name == "employee"
    result = "allow employee"
}
