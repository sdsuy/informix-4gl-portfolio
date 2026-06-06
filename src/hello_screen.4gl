MAIN
    OPEN FORM customer_form FROM "forms/customer"
    DISPLAY FORM customer_form

    MENU "Customer Screen"
        COMMAND "Exit"
            EXIT MENU
    END MENU

    CLOSE FORM customer_form
END MAIN
