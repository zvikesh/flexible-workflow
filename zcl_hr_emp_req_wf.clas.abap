CLASS zcl_hr_emp_req_wf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES bi_object .
    INTERFACES bi_persistent .
    INTERFACES if_workflow .

    EVENTS created
      EXPORTING
        VALUE(iv_date)     TYPE datum
        VALUE(iv_req_body) TYPE text120
        VALUE(iv_name)     TYPE cname.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA:
      gv_employee_id TYPE pernr_d,
      gv_lpor        TYPE sibflpor.
ENDCLASS.

CLASS zcl_hr_emp_req_wf IMPLEMENTATION.

  METHOD bi_persistent~find_by_lpor.

  ENDMETHOD.


  METHOD bi_persistent~lpor.

  ENDMETHOD.


  METHOD bi_persistent~refresh.

  ENDMETHOD.


  METHOD bi_object~default_attribute_value.

  ENDMETHOD.


  METHOD bi_object~execute_default_method.

  ENDMETHOD.


  METHOD bi_object~release.

  ENDMETHOD.
ENDCLASS.
