In some cases, while extending the standard processes, you may need to replace stan-
da rd wor kfl ow with a customized one. Deactivate the standard event lin kage and t hen
activate the one with the custom workflow in such cases. Transaction SWETYPV is used
to act iva te/deactivate event linkages

For implementing custom conditions for individual business requirements, SAP has
provided en hancement spot SWF _PROCESS_WORKFLOW_CONDITIO N. This spot contains two
BAdl definitions, as follow s:
• SW F WORKFLOW CONDITION DEF to add custom conditions
• SWF _WORKF LOW_CONDITION_ EVAL to add evaluation logic for custom conditions
