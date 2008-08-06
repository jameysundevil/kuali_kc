##############
#
# Shell script to patch a release 1.0 DB to release 1.0.1 DB
# Created 6-AUG-2008 Tyler Wilson
#
# Use sqlplus to execute SQL scripts
# Use sqlldr to load LOB DML into tables
#
##############

sqlplus <username>/<password>@<service> @KRA-Release-1_0-1_0_1-Patch.sql

sqlldr <username>/<password>@<service> control=DML/LOB-CTL/EXEMPTION_TYPE.ctl
sqlldr <username>/<password>@<service> control=DML/LOB-CTL/EN_DOC_HDR_CNTNT_T.ctl
sqlldr <username>/<password>@<service> control=DML/LOB-CTL/EN_RULE_ATTRIB_T.ctl
sqlldr <username>/<password>@<service> control=DML/LOB-CTL/FP_MAINTENANCE_DOCUMENT_T.ctl
sqlldr <username>/<password>@<service> control=DML/LOB-CTL/SPONSOR_FORM_TEMPLATES.ctl
sqlldr <username>/<password>@<service> control=DML/LOB-CTL/YNQ_EXPLANATION.ctl

