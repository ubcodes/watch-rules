rule AmountLimitCheck {
    description "Monitors for transaction amounts beyond $500."

    when amount > 500

    then block
        score 0.75
        reason "Transaction exceeds the $500 limit in any currency"
}
