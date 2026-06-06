MAIN
    DEFINE p_customer_id INTEGER
    DEFINE v_full_name CHAR(80)
    DEFINE v_email CHAR(120)
    DEFINE v_city CHAR(60)
    DEFINE v_status CHAR(1)

    OPEN SESSION session_id
        TO DATABASE portfolio_db
        AS USER "informix"
        PASSWORD "in4mix"

    LET p_customer_id = 1

    SELECT full_name, email, city, status
        INTO v_full_name, v_email, v_city, v_status
        FROM customer
        WHERE customer_id = p_customer_id

    DISPLAY "Customer: ", v_full_name CLIPPED
    DISPLAY "Email   : ", v_email CLIPPED
    DISPLAY "City    : ", v_city CLIPPED
    DISPLAY "Status  : ", v_status

END MAIN