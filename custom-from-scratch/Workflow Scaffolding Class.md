# Class to Trigger Workflow Event and Tasks Logic

```

CLASS zcl_cust_class_wf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_workflow.
    INTERFACES bi_object.
    INTERFACES bi_persistent.

    METHODS constructor
      IMPORTING
        iv_instid TYPE swo_typeid.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA:
      gv_lpor TYPE sibflpor.

ENDCLASS.

CLASS zcl_cust_class_wf IMPLEMENTATION.

  METHOD constructor.
    me->gv_lpor = VALUE #( instid  = iv_instid
                           catid   = 'CL'
                           objtype = 'ZCL_CUST_CLASS_WF' ).

    "Create and update global attributes of the class required during Workflow Runtime
    
  ENDMETHOD.

  METHOD bi_persistent~find_by_lpor.
    result = NEW zcl_cust_class_wf( iv_instid = lpor-instid ).
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

# Runtime Fallback Class for Workflow

| Methods in Runtime Callback Class | Description |
|:---|:---|
| BE FORE CREATION CAL LBAC K | Called before the next activity (wor k item) is created |
| ON CREATI ON CA LL BACK | Called on creation of activity |
| AF TER CREATION CALLBACK | Called after the cur rent activity is created |
| BE FORE COMPLETION CA LL BACK | Called be fore activity completion |
| AF TER COMPL ETI ON CALLBAC K | Called immed iately after activi ty completion |
| MI TIGATE AG EN T RULE EVALUATION | Called when agent determina ti on fa ils |
| MITIGATE START COND EVA LUATION | Called when the start cond ition eva luation fa ils |
| RESULT CA LL BACK | Called when the entire workflow is completed |
| ON CANCELLATION CALLBAC K | Called when the ent ire workflow is canceled |
| INIT | Call ed on initia lization of the object |

```

CLASS zcl_flex_wf_run_appl_base DEFINITION
  PUBLIC
  INHERITING FROM cl_swf_flex_ifs_run_appl_base
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      if_swf_flex_ifs_run_appl~result_callback REDEFINITION,
      if_swf_flex_ifs_run_appl_step~after_completion_callback REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_flex_wf_run_appl_base IMPLEMENTATION.

  METHOD if_swf_flex_ifs_run_appl~result_callback.
*    "Get Result
*    DATA(ls_result) = io_result->get_result( ).
*
*    "Get Container - The Values of Application Object at runtime
*    DATA(lt_wf_container)   = io_context->get_workflow_container( ).
*    DATA(lt_task_container) = io_context->get_task_container( ).
*
*    "Update Custom Tables if any
*
*    "Call BAPI or other logic
*
*    "Application Logs if needed
*
*    "Set Workflow Outcome - will be used by other processing like Email Templates
*    ev_outcome = COND #( WHEN ls_result-nature = 'POSITIVE' THEN 'APPR' ELSE 'REJ' ).
  ENDMETHOD.

  METHOD if_swf_flex_ifs_run_appl_step~after_completion_callback.
*
*    " DATA(step_execution_results) = io_current_activity->get_execution_results( ).
*    "
*    " TRY.
*    "     DATA(approval_result) = step_execution_results[ 1 ]-nature.
*    "   CATCH cx_sy_itab_line_not_found.
*    " ENDTRY.
*    "
*    " IF approval_result EQ 'POSITIVE'.
*    "   ev_action = if_swf_flex_component=>c_action_continue.
*    " ELSEIF approval_result EQ 'NEGATIVE'. "Means it's rejected
*    "   ev_action = if_swf_flex_component=>c_action_cancel.
*    " ENDIF.
*
  ENDMETHOD.


ENDCLASS.

```
