package dataapi.authz

default allow = false

# Usuário da área de dados tem acesso completo
allow {
    input.user_role == "dados"
}

# Usuário de marketing só pode acessar colunas que não sejam 'price_in_taka'
allow {
    input.user_role == "marketing"
    not input.column == "price_in_taka"
}

# Usuário de financeiro só pode acessar colunas que não sejam 'city'
allow {
    input.user_role == "financeiro"
    not input.column == "city"
}
