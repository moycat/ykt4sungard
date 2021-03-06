DROP TABLE JBPM_ACTION;
DROP TABLE JBPM_BYTEARRAY;
DROP TABLE JBPM_BYTEBLOCK;
DROP TABLE JBPM_COMMENT;
DROP TABLE JBPM_DECISIONCONDITIONS;
DROP TABLE JBPM_DELEGATION;
DROP TABLE JBPM_EVENT;
DROP TABLE JBPM_EXCEPTIONHANDLER;
DROP TABLE JBPM_ID_GROUP;
DROP TABLE JBPM_ID_MEMBERSHIP;
DROP TABLE JBPM_ID_PERMISSIONS;
DROP TABLE JBPM_ID_USER;
DROP TABLE JBPM_LOG;
DROP TABLE JBPM_MESSAGE;
DROP TABLE JBPM_MODULEDEFINITION;
DROP TABLE JBPM_MODULEINSTANCE;
DROP TABLE JBPM_NODE;
DROP TABLE JBPM_POOLEDACTOR;
DROP TABLE JBPM_PROCESSDEFINITION;
DROP TABLE JBPM_PROCESSINSTANCE;
DROP TABLE JBPM_RUNTIMEACTION;
DROP TABLE JBPM_SWIMLANE;
DROP TABLE JBPM_SWIMLANEINSTANCE;
DROP TABLE JBPM_TASK;
DROP TABLE JBPM_TASKACTORPOOL;
DROP TABLE JBPM_TASKCONTROLLER;
DROP TABLE JBPM_TASKINSTANCE;
DROP TABLE JBPM_TIMER;
DROP TABLE JBPM_TOKEN;
DROP TABLE JBPM_TOKENVARIABLEMAP;
DROP TABLE JBPM_TRANSITION;
DROP TABLE JBPM_VARIABLEACCESS;
DROP TABLE JBPM_VARIABLEINSTANCE;
create table JBPM_ACTION (ID_ number(19,0) not null, class char(1) not null, NAME_ varchar2(255), ISPROPAGATIONALLOWED_ number(1,0), ACTIONEXPRESSION_ varchar2(255), ISASYNC_ number(1,0), REFERENCEDACTION_ number(19,0), ACTIONDELEGATION_ number(19,0), EVENT_ number(19,0), PROCESSDEFINITION_ number(19,0), TIMERNAME_ varchar2(255), DUEDATE_ varchar2(255), REPEAT_ varchar2(255), TRANSITIONNAME_ varchar2(255), TIMERACTION_ number(19,0), EXPRESSION_ varchar2(4000), EVENTINDEX_ number(10,0), EXCEPTIONHANDLER_ number(19,0), EXCEPTIONHANDLERINDEX_ number(10,0), primary key (ID_));
create table JBPM_BYTEARRAY (ID_ number(19,0) not null, NAME_ varchar2(255), FILEDEFINITION_ number(19,0), primary key (ID_));
create table JBPM_BYTEBLOCK (PROCESSFILE_ number(19,0) not null, BYTES_ raw(1024), INDEX_ number(10,0) not null, primary key (PROCESSFILE_, INDEX_));
create table JBPM_COMMENT (ID_ number(19,0) not null, VERSION_ number(10,0) not null, ACTORID_ varchar2(255), TIME_ date, MESSAGE_ varchar2(4000), TOKEN_ number(19,0), TASKINSTANCE_ number(19,0), TOKENINDEX_ number(10,0), TASKINSTANCEINDEX_ number(10,0), primary key (ID_));
create table JBPM_DECISIONCONDITIONS (DECISION_ number(19,0) not null, TRANSITIONNAME_ varchar2(255), EXPRESSION_ varchar2(255), INDEX_ number(10,0) not null, primary key (DECISION_, INDEX_));
create table JBPM_DELEGATION (ID_ number(19,0) not null, CLASSNAME_ varchar2(4000), CONFIGURATION_ varchar2(4000), CONFIGTYPE_ varchar2(255), PROCESSDEFINITION_ number(19,0), primary key (ID_));
create table JBPM_EVENT (ID_ number(19,0) not null, EVENTTYPE_ varchar2(255), TYPE_ char(1), GRAPHELEMENT_ number(19,0), PROCESSDEFINITION_ number(19,0), NODE_ number(19,0), TRANSITION_ number(19,0), TASK_ number(19,0), primary key (ID_));
create table JBPM_EXCEPTIONHANDLER (ID_ number(19,0) not null, EXCEPTIONCLASSNAME_ varchar2(4000), TYPE_ char(1), GRAPHELEMENT_ number(19,0), PROCESSDEFINITION_ number(19,0), GRAPHELEMENTINDEX_ number(10,0), NODE_ number(19,0), TRANSITION_ number(19,0), TASK_ number(19,0), primary key (ID_));
create table JBPM_ID_GROUP (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), TYPE_ varchar2(255), PARENT_ number(19,0), primary key (ID_));
create table JBPM_ID_MEMBERSHIP (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), ROLE_ varchar2(255), USER_ number(19,0), GROUP_ number(19,0), primary key (ID_));
create table JBPM_ID_PERMISSIONS (ENTITY_ number(19,0) not null, CLASS_ varchar2(255), NAME_ varchar2(255), ACTION_ varchar2(255));
create table JBPM_ID_USER (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), EMAIL_ varchar2(255), PASSWORD_ varchar2(255), primary key (ID_));
create table JBPM_LOG (ID_ number(19,0) not null, CLASS_ char(1) not null, INDEX_ number(10,0), DATE_ date, TOKEN_ number(19,0), PARENT_ number(19,0), MESSAGE_ varchar2(4000), EXCEPTION_ varchar2(4000), ACTION_ number(19,0), NODE_ number(19,0), ENTER_ date, LEAVE_ date, DURATION_ number(19,0), TRANSITION_ number(19,0), CHILD_ number(19,0), SOURCENODE_ number(19,0), DESTINATIONNODE_ number(19,0), VARIABLEINSTANCE_ number(19,0), OLDBYTEARRAY_ number(19,0), NEWBYTEARRAY_ number(19,0), OLDDATEVALUE_ date, NEWDATEVALUE_ date, OLDDOUBLEVALUE_ double precision, NEWDOUBLEVALUE_ double precision, OLDLONGIDCLASS_ varchar2(255), OLDLONGIDVALUE_ number(19,0), NEWLONGIDCLASS_ varchar2(255), NEWLONGIDVALUE_ number(19,0), OLDSTRINGIDCLASS_ varchar2(255), OLDSTRINGIDVALUE_ varchar2(255), NEWSTRINGIDCLASS_ varchar2(255), NEWSTRINGIDVALUE_ varchar2(255), OLDLONGVALUE_ number(19,0), NEWLONGVALUE_ number(19,0), OLDSTRINGVALUE_ varchar2(4000), NEWSTRINGVALUE_ varchar2(4000), TASKINSTANCE_ number(19,0), TASKACTORID_ varchar2(255), TASKOLDACTORID_ varchar2(255), SWIMLANEINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_MESSAGE (ID_ number(19,0) not null, CLASS_ char(1) not null, DESTINATION_ varchar2(255), EXCEPTION_ varchar2(255), ISSUSPENDED_ number(1,0), TOKEN_ number(19,0), TEXT_ varchar2(255), ACTION_ number(19,0), NODE_ number(19,0), TRANSITIONNAME_ varchar2(255), TASKINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_MODULEDEFINITION (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(4000), PROCESSDEFINITION_ number(19,0), STARTTASK_ number(19,0), primary key (ID_));
create table JBPM_MODULEINSTANCE (ID_ number(19,0) not null, CLASS_ char(1) not null, PROCESSINSTANCE_ number(19,0), TASKMGMTDEFINITION_ number(19,0), NAME_ varchar2(255), primary key (ID_));
create table JBPM_NODE (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), PROCESSDEFINITION_ number(19,0), ISASYNC_ number(1,0), ACTION_ number(19,0), SUPERSTATE_ number(19,0), SUBPROCESSDEFINITION_ number(19,0), DECISIONEXPRESSION_ varchar2(255), DECISIONDELEGATION number(19,0), SIGNAL_ number(10,0), CREATETASKS_ number(1,0), ENDTASKS_ number(1,0), NODECOLLECTIONINDEX_ number(10,0), primary key (ID_));
create table JBPM_POOLEDACTOR (ID_ number(19,0) not null, ACTORID_ varchar2(255), SWIMLANEINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_PROCESSDEFINITION (ID_ number(19,0) not null, NAME_ varchar2(255), VERSION_ number(10,0), ISTERMINATIONIMPLICIT_ number(1,0), STARTSTATE_ number(19,0), primary key (ID_));
create table JBPM_PROCESSINSTANCE (ID_ number(19,0) not null, VERSION_ number(10,0) not null, START_ date, END_ date, ISSUSPENDED_ number(1,0), PROCESSDEFINITION_ number(19,0), ROOTTOKEN_ number(19,0), SUPERPROCESSTOKEN_ number(19,0), primary key (ID_));
create table JBPM_RUNTIMEACTION (ID_ number(19,0) not null, VERSION_ number(10,0) not null, EVENTTYPE_ varchar2(255), TYPE_ char(1), GRAPHELEMENT_ number(19,0), PROCESSINSTANCE_ number(19,0), ACTION_ number(19,0), PROCESSINSTANCEINDEX_ number(10,0), primary key (ID_));
create table JBPM_SWIMLANE (ID_ number(19,0) not null, NAME_ varchar2(255), ACTORIDEXPRESSION_ varchar2(255), POOLEDACTORSEXPRESSION_ varchar2(255), ASSIGNMENTDELEGATION_ number(19,0), TASKMGMTDEFINITION_ number(19,0), primary key (ID_));
create table JBPM_SWIMLANEINSTANCE (ID_ number(19,0) not null, NAME_ varchar2(255), ACTORID_ varchar2(255), SWIMLANE_ number(19,0), TASKMGMTINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_TASK (ID_ number(19,0) not null, NAME_ varchar2(255), PROCESSDEFINITION_ number(19,0), DESCRIPTION_ varchar2(4000), ISBLOCKING_ number(1,0), ISSIGNALLING_ number(1,0), DUEDATE_ varchar2(255), ACTORIDEXPRESSION_ varchar2(255), POOLEDACTORSEXPRESSION_ varchar2(255), TASKMGMTDEFINITION_ number(19,0), TASKNODE_ number(19,0), STARTSTATE_ number(19,0), ASSIGNMENTDELEGATION_ number(19,0), SWIMLANE_ number(19,0), TASKCONTROLLER_ number(19,0), primary key (ID_));
create table JBPM_TASKACTORPOOL (TASKINSTANCE_ number(19,0) not null, POOLEDACTOR_ number(19,0) not null, primary key (TASKINSTANCE_, POOLEDACTOR_));
create table JBPM_TASKCONTROLLER (ID_ number(19,0) not null, TASKCONTROLLERDELEGATION_ number(19,0), primary key (ID_));
create table JBPM_TASKINSTANCE (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), DESCRIPTION_ varchar2(4000), ACTORID_ varchar2(255), CREATE_ date, START_ date, END_ date, DUEDATE_ date, PRIORITY_ number(10,0), ISCANCELLED_ number(1,0), ISSUSPENDED_ number(1,0), ISOPEN_ number(1,0), ISSIGNALLING_ number(1,0), ISBLOCKING_ number(1,0), TASK_ number(19,0), TOKEN_ number(19,0), SWIMLANINSTANCE_ number(19,0), TASKMGMTINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_TIMER (ID_ number(19,0) not null, NAME_ varchar2(255), DUEDATE_ date, REPEAT_ varchar2(255), TRANSITIONNAME_ varchar2(255), EXCEPTION_ varchar2(4000), ISSUSPENDED_ number(1,0), ACTION_ number(19,0), TOKEN_ number(19,0), PROCESSINSTANCE_ number(19,0), TASKINSTANCE_ number(19,0), GRAPHELEMENTTYPE_ varchar2(255), GRAPHELEMENT_ number(19,0), primary key (ID_));
create table JBPM_TOKEN (ID_ number(19,0) not null, VERSION_ number(10,0) not null, NAME_ varchar2(255), START_ date, END_ date, NODEENTER_ date, NEXTLOGINDEX_ number(10,0), ISABLETOREACTIVATEPARENT_ number(1,0), ISTERMINATIONIMPLICIT_ number(1,0), ISSUSPENDED_ number(1,0), NODE_ number(19,0), PROCESSINSTANCE_ number(19,0), PARENT_ number(19,0), SUBPROCESSINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_TOKENVARIABLEMAP (ID_ number(19,0) not null, TOKEN_ number(19,0), CONTEXTINSTANCE_ number(19,0), primary key (ID_));
create table JBPM_TRANSITION (ID_ number(19,0) not null, NAME_ varchar2(255), PROCESSDEFINITION_ number(19,0), FROM_ number(19,0), TO_ number(19,0), FROMINDEX_ number(10,0), primary key (ID_));
create table JBPM_VARIABLEACCESS (ID_ number(19,0) not null, VARIABLENAME_ varchar2(255), ACCESS_ varchar2(255), MAPPEDNAME_ varchar2(255), PROCESSSTATE_ number(19,0), TASKCONTROLLER_ number(19,0), INDEX_ number(10,0), SCRIPT_ number(19,0), primary key (ID_));
create table JBPM_VARIABLEINSTANCE (ID_ number(19,0) not null, CLASS_ char(1) not null, NAME_ varchar2(255), CONVERTER_ char(1), TOKEN_ number(19,0), TOKENVARIABLEMAP_ number(19,0), PROCESSINSTANCE_ number(19,0), BYTEARRAYVALUE_ number(19,0), DATEVALUE_ date, DOUBLEVALUE_ double precision, LONGIDCLASS_ varchar2(255), LONGVALUE_ number(19,0), STRINGIDCLASS_ varchar2(255), STRINGVALUE_ varchar2(255), TASKINSTANCE_ number(19,0), primary key (ID_));
alter table JBPM_ACTION add constraint FK_ACTION_EVENT foreign key (EVENT_) references JBPM_EVENT;
alter table JBPM_ACTION add constraint FK_ACTION_EXPTHDL foreign key (EXCEPTIONHANDLER_) references JBPM_EXCEPTIONHANDLER;
alter table JBPM_ACTION add constraint FK_ACTION_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_ACTION add constraint FK_CRTETIMERACT_TA foreign key (TIMERACTION_) references JBPM_ACTION;
alter table JBPM_ACTION add constraint FK_ACTION_ACTNDEL foreign key (ACTIONDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_ACTION add constraint FK_ACTION_REFACT foreign key (REFERENCEDACTION_) references JBPM_ACTION;
alter table JBPM_BYTEARRAY add constraint FK_BYTEARR_FILDEF foreign key (FILEDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_BYTEBLOCK add constraint FK_BYTEBLOCK_FILE foreign key (PROCESSFILE_) references JBPM_BYTEARRAY;
alter table JBPM_COMMENT add constraint FK_COMMENT_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_COMMENT add constraint FK_COMMENT_TSK foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_DECISIONCONDITIONS add constraint FK_DECCOND_DEC foreign key (DECISION_) references JBPM_NODE;
alter table JBPM_DELEGATION add constraint FK_DELEGATION_PRCD foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_EVENT add constraint FK_EVENT_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_EVENT add constraint FK_EVENT_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_EVENT add constraint FK_EVENT_TRANS foreign key (TRANSITION_) references JBPM_TRANSITION;
alter table JBPM_EVENT add constraint FK_EVENT_TASK foreign key (TASK_) references JBPM_TASK;
alter table JBPM_ID_GROUP add constraint FK_ID_GRP_PARENT foreign key (PARENT_) references JBPM_ID_GROUP;
alter table JBPM_ID_MEMBERSHIP add constraint FK_ID_MEMSHIP_GRP foreign key (GROUP_) references JBPM_ID_GROUP;
alter table JBPM_ID_MEMBERSHIP add constraint FK_ID_MEMSHIP_USR foreign key (USER_) references JBPM_ID_USER;
alter table JBPM_LOG add constraint FK_LOG_SOURCENODE foreign key (SOURCENODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_LOG add constraint FK_LOG_OLDBYTES foreign key (OLDBYTEARRAY_) references JBPM_BYTEARRAY;
alter table JBPM_LOG add constraint FK_LOG_NEWBYTES foreign key (NEWBYTEARRAY_) references JBPM_BYTEARRAY;
alter table JBPM_LOG add constraint FK_LOG_CHILDTOKEN foreign key (CHILD_) references JBPM_TOKEN;
alter table JBPM_LOG add constraint FK_LOG_DESTNODE foreign key (DESTINATIONNODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_TASKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_SWIMINST foreign key (SWIMLANEINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_PARENT foreign key (PARENT_) references JBPM_LOG;
alter table JBPM_LOG add constraint FK_LOG_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_LOG add constraint FK_LOG_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_LOG add constraint FK_LOG_VARINST foreign key (VARIABLEINSTANCE_) references JBPM_VARIABLEINSTANCE;
alter table JBPM_LOG add constraint FK_LOG_TRANSITION foreign key (TRANSITION_) references JBPM_TRANSITION;
alter table JBPM_MESSAGE add constraint FK_MSG_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_MESSAGE add constraint FK_CMD_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_MESSAGE add constraint FK_CMD_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_MESSAGE add constraint FK_CMD_TASKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_MODULEDEFINITION add constraint FK_TSKDEF_START foreign key (STARTTASK_) references JBPM_TASK;
alter table JBPM_MODULEDEFINITION add constraint FK_MODDEF_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_MODULEINSTANCE add constraint FK_TASKMGTINST_TMD foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_MODULEINSTANCE add constraint FK_MODINST_PRCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_NODE add constraint FK_PROCST_SBPRCDEF foreign key (SUBPROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_NODE add constraint FK_NODE_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_NODE add constraint FK_NODE_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_NODE add constraint FK_DECISION_DELEG foreign key (DECISIONDELEGATION) references JBPM_DELEGATION;
alter table JBPM_NODE add constraint FK_NODE_SUPERSTATE foreign key (SUPERSTATE_) references JBPM_NODE;
create index IDX_PLDACTR_ACTID on JBPM_POOLEDACTOR (ACTORID_);
alter table JBPM_POOLEDACTOR add constraint FK_POOLEDACTOR_SLI foreign key (SWIMLANEINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_PROCESSDEFINITION add constraint FK_PROCDEF_STRTSTA foreign key (STARTSTATE_) references JBPM_NODE;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_ROOTTKN foreign key (ROOTTOKEN_) references JBPM_TOKEN;
alter table JBPM_PROCESSINSTANCE add constraint FK_PROCIN_SPROCTKN foreign key (SUPERPROCESSTOKEN_) references JBPM_TOKEN;
alter table JBPM_RUNTIMEACTION add constraint FK_RTACTN_PROCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_RUNTIMEACTION add constraint FK_RTACTN_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_SWIMLANE add constraint FK_SWL_ASSDEL foreign key (ASSIGNMENTDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_SWIMLANE add constraint FK_SWL_TSKMGMTDEF foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_SWIMLANEINSTANCE add constraint FK_SWIMLANEINST_TM foreign key (TASKMGMTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_SWIMLANEINSTANCE add constraint FK_SWIMLANEINST_SL foreign key (SWIMLANE_) references JBPM_SWIMLANE;
alter table JBPM_TASK add constraint FK_TSK_TSKCTRL foreign key (TASKCONTROLLER_) references JBPM_TASKCONTROLLER;
alter table JBPM_TASK add constraint FK_TASK_ASSDEL foreign key (ASSIGNMENTDELEGATION_) references JBPM_DELEGATION;
alter table JBPM_TASK add constraint FK_TASK_TASKNODE foreign key (TASKNODE_) references JBPM_NODE;
alter table JBPM_TASK add constraint FK_TASK_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_TASK add constraint FK_TASK_STARTST foreign key (STARTSTATE_) references JBPM_NODE;
alter table JBPM_TASK add constraint FK_TASK_TASKMGTDEF foreign key (TASKMGMTDEFINITION_) references JBPM_MODULEDEFINITION;
alter table JBPM_TASK add constraint FK_TASK_SWIMLANE foreign key (SWIMLANE_) references JBPM_SWIMLANE;
alter table JBPM_TASKACTORPOOL add constraint FK_TSKACTPOL_PLACT foreign key (POOLEDACTOR_) references JBPM_POOLEDACTOR;
alter table JBPM_TASKACTORPOOL add constraint FK_TASKACTPL_TSKI foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_TASKCONTROLLER add constraint FK_TSKCTRL_DELEG foreign key (TASKCONTROLLERDELEGATION_) references JBPM_DELEGATION;
create index IDX_TASK_ACTORID on JBPM_TASKINSTANCE (ACTORID_);
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TMINST foreign key (TASKMGMTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_SLINST foreign key (SWIMLANINSTANCE_) references JBPM_SWIMLANEINSTANCE;
alter table JBPM_TASKINSTANCE add constraint FK_TASKINST_TASK foreign key (TASK_) references JBPM_TASK;
alter table JBPM_TIMER add constraint FK_TIMER_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TIMER add constraint FK_TIMER_PRINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_TIMER add constraint FK_TIMER_ACTION foreign key (ACTION_) references JBPM_ACTION;
alter table JBPM_TIMER add constraint FK_TIMER_TSKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_TOKEN add constraint FK_TOKEN_PARENT foreign key (PARENT_) references JBPM_TOKEN;
alter table JBPM_TOKEN add constraint FK_TOKEN_NODE foreign key (NODE_) references JBPM_NODE;
alter table JBPM_TOKEN add constraint FK_TOKEN_PROCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_TOKEN add constraint FK_TOKEN_SUBPI foreign key (SUBPROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_TOKENVARIABLEMAP add constraint FK_TKVARMAP_CTXT foreign key (CONTEXTINSTANCE_) references JBPM_MODULEINSTANCE;
alter table JBPM_TOKENVARIABLEMAP add constraint FK_TKVARMAP_TOKEN foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_TRANSITION add constraint FK_TRANSITION_TO foreign key (TO_) references JBPM_NODE;
alter table JBPM_TRANSITION add constraint FK_TRANS_PROCDEF foreign key (PROCESSDEFINITION_) references JBPM_PROCESSDEFINITION;
alter table JBPM_TRANSITION add constraint FK_TRANSITION_FROM foreign key (FROM_) references JBPM_NODE;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_TSKCTRL foreign key (TASKCONTROLLER_) references JBPM_TASKCONTROLLER;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_SCRIPT foreign key (SCRIPT_) references JBPM_ACTION;
alter table JBPM_VARIABLEACCESS add constraint FK_VARACC_PROCST foreign key (PROCESSSTATE_) references JBPM_NODE;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_TK foreign key (TOKEN_) references JBPM_TOKEN;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_TKVARMP foreign key (TOKENVARIABLEMAP_) references JBPM_TOKENVARIABLEMAP;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VARINST_PRCINST foreign key (PROCESSINSTANCE_) references JBPM_PROCESSINSTANCE;
alter table JBPM_VARIABLEINSTANCE add constraint FK_VAR_TSKINST foreign key (TASKINSTANCE_) references JBPM_TASKINSTANCE;
alter table JBPM_VARIABLEINSTANCE add constraint FK_BYTEINST_ARRAY foreign key (BYTEARRAYVALUE_) references JBPM_BYTEARRAY;
create sequence hibernate_sequence;
