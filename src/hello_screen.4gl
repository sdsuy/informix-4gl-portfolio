MAIN
    DEFINE customer_id INTEGER
    DEFINE customer_name CHAR(30)

    OPEN FORM customer_form FROM "forms/customer"
    DISPLAY FORM customer_form

    INPUT BY NAME customer_id, customer_name

    MENU "Customer Screen"
        COMMAND "Exit"
            EXIT MENU
    END MENU

    CLOSE FORM customer_form
END MAIN