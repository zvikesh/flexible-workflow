# Artifacts

| Object                           | Purpose                               |
| :------------------------------- | :------------------------------------ |
| ZCL_HR_EMP_REQ_WF                | Class with Event to trigger WF        |
| ZCL_HR_EMP_REQ_RUN_APPL_BASE     | Fallback class for Flexible WF        |


# Configurations

**Maintain BO**

Transaction: SM30 </br>
View Name: V_BO_TYPE </br>
BO Name: ZZHREmployeeRequest </br>

![V_BO_TYPE](https://github.com/zvikesh/flexible-workflow/assets/108741639/1f9ec770-6960-4e39-92ea-bfadde4d4708)

**Maintain BO Node**

Transaction: SM30 </br>
View Name: SBO_V_NODETYPE </br>
BO Node: ZZHREmployeeRequestRN </br>

![SBO_V_NODETYPE](https://github.com/zvikesh/flexible-workflow/assets/108741639/32fdd286-4169-4ed3-92ea-6942dc197d5e)

**Maintain BO CDS View**

Transaction: SM30 </br>
View Name: V_SBO_NODE_CDS </br>
CDS View: ZI_EmployeeRequest </br>

![V_SBO_NODE_CDS](https://github.com/zvikesh/flexible-workflow/assets/108741639/158b1116-e0f2-4dc7-a5e9-43bdf13adbe4)

**Maintain BO Representation**

Transaction: SM30 </br>
View Name: V_BODEF </br>

![V_BODEF](https://github.com/zvikesh/flexible-workflow/assets/108741639/d2cc4e16-c1da-496c-a69f-64fa8734de09)

# Scenario Development

Transaction: SWDD_SCENARIO



