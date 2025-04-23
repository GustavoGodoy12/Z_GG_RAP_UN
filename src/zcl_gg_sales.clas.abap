CLASS zcl_gg_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: go_instance TYPE REF TO zcl_gg_sales,
                gt_sales    TYPE TABLE OF ztgg_sales_un.

    CLASS-METHODS get_instance RETURNING VALUE(ro_instance)
                                           TYPE REF TO zcl_gg_sales.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gg_sales IMPLEMENTATION.
  METHOD get_instance.

    go_instance = ro_instance = COND #(
        WHEN go_instance is BOUND then go_instance
        else NEW #(  )
    ).

  ENDMETHOD.

ENDCLASS.
