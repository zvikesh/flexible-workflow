```
CLASS zcl_mdm_prd_wf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      "Workflow Interfaces
      bi_object ,
      bi_persistent ,
      if_workflow .

    METHODS init_wf_container
      IMPORTING
        iv_evt_obj_key TYPE swo_typeid
      EXPORTING
        ev_prd_no_int  TYPE matnr
        ev_prd_no_ext  TYPE matnr_external.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA:
      gv_lpor TYPE sibflpor.

ENDCLASS.

CLASS zcl_mdm_prd_wf IMPLEMENTATION.

  METHOD init_wf_container.

    ev_prd_no_int = iv_evt_obj_key.

    CALL FUNCTION 'CONVERSION_EXIT_MATN1_OUTPUT'
      EXPORTING
        input  = iv_evt_obj_key
      IMPORTING
        output = ev_prd_no_ext.

    " Constructor Class Code
    " CONVERSION_EXIT_MATN1_INPUT
    " me->gv_lpor = VALUE #( instid  = iv_instid
    "                        catid   = 'CL'
    "                        objtype = 'ZCL_MDM_PRD_WF' ).

  ENDMETHOD.


  METHOD bi_persistent~find_by_lpor.
    result = NEW zcl_hr_emp_req_wf( iv_instid = lpor-instid ).
  ENDMETHOD.

  METHOD bi_persistent~lpor.
    result = me->gv_lpor.
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
```
