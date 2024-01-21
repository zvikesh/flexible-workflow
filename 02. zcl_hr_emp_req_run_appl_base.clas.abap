CLASS zcl_hr_emp_req_run_appl_base DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_swf_flex_ifs_run_appl .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hr_emp_req_run_appl_base IMPLEMENTATION.


  METHOD if_swf_flex_ifs_run_appl~after_creation_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~before_completion_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~before_stage_end_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~get_appl_agent_rule_execution.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~get_appl_condition_execution.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~get_factory_calendar.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~get_scenario_definition.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~get_team_attributes.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~init.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~mitigate_agent_rule_evaluation.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~mitigate_start_cond_evaluation.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_cancellation_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_change_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_no_agent_found.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_restart_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_stage_end_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~on_stage_start_callback.

  ENDMETHOD.


  METHOD if_swf_flex_ifs_run_appl~result_callback.

    "Get Result
    DATA(ls_result) = io_result->get_result( ).

    "Get Container - The Values of Application Object at runtime
    DATA(lt_wf_container)   = io_context->get_workflow_container( ).
    DATA(lt_task_container) = io_context->get_task_container( ).

    "Update Custom Tables if any

    "Call BAPI or other logic

    "Application Logs if needed

    "Set Workflow Outcome - will be used by other processing like Email Templates
    ev_outcome = COND #( WHEN ls_result-nature = 'POSITIVE' THEN 'APPR' ELSE 'REJ' ).

  ENDMETHOD.
ENDCLASS.
