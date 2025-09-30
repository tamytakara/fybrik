package dataapi.authz

# Marketing: ocultar a coluna Price_in_taka
verdict[{"action": {"name":"DeleteColumn", "columns": ["Price_in_taka"]}, "policy": "Ocultar Price_in_taka para marketing"}] {
  input.action.actionType == "read"
  input.context.workload.properties["team"] == "marketing"
}

# Finance: ocultar a coluna City
verdict[{"action": {"name":"DeleteColumn", "columns": ["City", "Location"]}, "policy": "Ocultar City para financeiro"}] {
  input.action.actionType == "read"
  input.context.workload.properties["team"] == "finance"
}