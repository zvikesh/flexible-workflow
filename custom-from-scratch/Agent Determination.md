# Responsibility Management

[Extensibility for Responsibility Management](https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/8308e6d301d54584a33cd04a9861bc52/be4c7a10997646cea7cecccf891c98f8.html)

## Overview

Team Category - MDM
Business process (PTP, OTC, FIN etc.).
- Team Types - PRD | BP
  Business subprocess (PTP-, OTC-, FIN-AR, FIN-AP etc.).
- Responsibility Definitions
  - Name-value pair that can be used to query teams.
  - [Custom](https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/8308e6d301d54584a33cd04a9861bc52/aca8c2682d284f2185873b14f838f7eb.html)

Function Profile - PRD_PURCH & PRD_SALES & 

Functions - PRD_PURCH | PRD_SALES | BP_VEND | BP_SUPPL

## Examples

| Team Types | MDM_PRD |
|:------ |:---|
| Responsibility Definitions||
| Function Profile |  MDM_PRD | 
| Functions |  PRD_PURCH, PRD_SALES | 

| Team Types | MDM_BP |
|:------ |:---|
| Responsibility Definitions||
| Function Profile | MDM_PRD | 
| Functions |  BP_VEND & BP_SUPPL | 

## Steps

| Step Name | How To | Example |
|:---|:--|:---|
| Create Team Cataegory | Manage Team Categories (F6616) | ZZ1_MDM |
| Define Functions | SPRO_ADMIN: Cross Application Components > General Application Functions > Responsibility Management > Functions > Define Functions | ZPRD_PURCH & ZPRD_SALES |
| Define Function Profiles | SPRO_ADMIN: Cross Application Components > General Application Functions > Responsibility Management > Functions > Define Function Profile | ZMDM_PRD |
| Assign a Function Profile to a Team Category | SPRO_ADMIN: Cross Application Components > General Application Functions > Responsibility Management > Teams and Responsibilities > Team Categories > Assign Function Profiles to Team Category | |

**Team Category**
if doesn't exist
- Manage Team Categories Fiori App (F6616)

**Responsibility Definition**
For standard Team Category, check if any cusotm Responsibility Definition is required.
For Custom Team Category, need to create standard will not be available.
SPRO_ADMIN: Cross Application Components > General Application Functions > Responsibility Management >
... > Define Custom Responsibility Definitions
... > Assign Custom Responsibility Definitions to Team Category

**Responsibility Definition**

SPRO_ADMIN
... > Define Custom Responsibility Definitions
... > Assign Custom Responsibility Definitions to Team Category
 
SM34
RSM_VC_CNTXT_AGENTRULE_MAP_S

## Manage Teams and Responsibilities (F2412)

