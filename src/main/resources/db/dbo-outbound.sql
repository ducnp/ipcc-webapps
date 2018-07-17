/*
Navicat SQL Server Data Transfer

Source Server         : 172.16.1.122
Source Server Version : 110000
Source Host           : 172.16.1.122:1433
Source Database       : calling
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-06-04 11:19:35
*/


-- ----------------------------
-- Table structure for acbloyalty
-- ----------------------------
DROP TABLE [dbo].[acbloyalty]
GO
CREATE TABLE [dbo].[acbloyalty] (
[record_id] int NOT NULL ,
[contact_info] varchar(128) NOT NULL ,
[contact_info_type] int NOT NULL ,
[record_type] int NOT NULL ,
[record_status] int NOT NULL ,
[call_result] int NULL ,
[attempt] int NOT NULL ,
[dial_sched_time] int NULL ,
[call_time] int NULL ,
[daily_from] int NOT NULL ,
[daily_till] int NOT NULL ,
[tz_dbid] int NOT NULL ,
[campaign_id] int NULL ,
[agent_id] varchar(32) NULL ,
[chain_id] int NOT NULL ,
[chain_n] int NOT NULL ,
[group_id] int NULL ,
[app_id] int NULL ,
[treatments] varchar(255) NULL ,
[media_ref] int NULL ,
[email_subject] varchar(255) NULL ,
[email_template_id] int NULL ,
[switch_id] int NULL ,
[BusinessUnit] varchar(150) NOT NULL ,
[CustomerID] varchar(20) NOT NULL ,
[CustomerName] nvarchar(250) NOT NULL ,
[CustomerSegment] varchar(10) NOT NULL ,
[Gift] varchar(150) NULL ,
[ManagerName] varchar(250) NOT NULL ,
[DateOfBrith] int NOT NULL ,
[MonthOfBirth] int NOT NULL ,
[OtherReason01] varchar(255) NULL ,
[loyalty_qn_1] varchar(10) NULL ,
[ShiperName] varchar(250) NULL ,
[OtherReason02] varchar(250) NULL ,
[Feedback] varchar(255) NULL ,
[Contact_Campaign] varchar(250) NULL ,
[Date_Campaign] varchar(25) NULL 
)


GO

-- ----------------------------
-- Records of acbloyalty
-- ----------------------------

-- ----------------------------
-- Table structure for acbsurvey
-- ----------------------------
DROP TABLE [dbo].[acbsurvey]
GO
CREATE TABLE [dbo].[acbsurvey] (
[record_id] int NOT NULL ,
[contact_info] varchar(128) NOT NULL ,
[contact_info_type] int NOT NULL ,
[record_type] int NOT NULL ,
[record_status] int NOT NULL ,
[call_result] int NULL ,
[attempt] int NOT NULL ,
[dial_sched_time] int NULL ,
[call_time] int NULL ,
[daily_from] int NOT NULL ,
[daily_till] int NOT NULL ,
[tz_dbid] int NOT NULL ,
[campaign_id] int NULL ,
[agent_id] varchar(32) NULL ,
[chain_id] int NOT NULL ,
[chain_n] int NOT NULL ,
[group_id] int NULL ,
[app_id] int NULL ,
[treatments] varchar(255) NULL ,
[media_ref] int NULL ,
[email_subject] varchar(255) NULL ,
[email_template_id] int NULL ,
[switch_id] int NULL ,
[CustomerID] varchar(20) NOT NULL ,
[CustomerName] varchar(250) NOT NULL ,
[Feedback] varchar(255) NULL ,
[ACCTNBR] varchar(15) NOT NULL ,
[TEN_CN_THUCHIEN] varchar(255) NOT NULL ,
[survey_qn_1] varchar(10) NULL ,
[survey_qn_2] varchar(10) NULL ,
[survey_qn_3] varchar(10) NULL ,
[Note] varchar(255) NULL ,
[Contact_Campaign] varchar(250) NULL ,
[Date_Campaign] varchar(25) NULL 
)


GO

-- ----------------------------
-- Records of acbsurvey
-- ----------------------------

-- ----------------------------
-- Table structure for campaign_name
-- ----------------------------
DROP TABLE [dbo].[campaign_name]
GO
CREATE TABLE [dbo].[campaign_name] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] nvarchar(MAX) NULL ,
[header] nvarchar(MAX) NULL ,
[header_db] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[campaign_name]', RESEED, 14)
GO

-- ----------------------------
-- Records of campaign_name
-- ----------------------------
SET IDENTITY_INSERT [dbo].[campaign_name] ON
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'13', N'campaign_name test 1', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'14', N'test01', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29",null]')
GO
GO
SET IDENTITY_INSERT [dbo].[campaign_name] OFF
GO

-- ----------------------------
-- Table structure for cc247other
-- ----------------------------
DROP TABLE [dbo].[cc247other]
GO
CREATE TABLE [dbo].[cc247other] (
[record_id] int NOT NULL ,
[contact_info] varchar(128) NOT NULL ,
[contact_info_type] int NOT NULL ,
[record_type] int NOT NULL ,
[record_status] int NOT NULL ,
[call_result] int NULL ,
[attempt] int NOT NULL ,
[dial_sched_time] int NULL ,
[call_time] int NULL ,
[daily_from] int NOT NULL ,
[daily_till] int NOT NULL ,
[tz_dbid] int NOT NULL ,
[campaign_id] int NULL ,
[agent_id] varchar(32) NULL ,
[chain_id] int NOT NULL ,
[chain_n] int NOT NULL ,
[group_id] int NULL ,
[app_id] int NULL ,
[treatments] varchar(255) NULL ,
[media_ref] int NULL ,
[email_subject] varchar(255) NULL ,
[email_template_id] int NULL ,
[switch_id] int NULL ,
[campaign_date] varchar(255) NULL ,
[customer_id] int NULL ,
[customer_name] varchar(255) NULL ,
[gender] varchar(255) NULL ,
[tax_id] varchar(255) NULL ,
[brithday] varchar(255) NULL ,
[title] varchar(255) NULL ,
[email] varchar(255) NULL ,
[address] varchar(255) NULL ,
[account_number] varchar(255) NULL ,
[card_number] varchar(255) NULL ,
[field_1] varchar(255) NULL ,
[field_2] varchar(255) NULL ,
[field_3] varchar(255) NULL ,
[field_4] varchar(255) NULL ,
[field_5] varchar(255) NULL ,
[field_6] varchar(255) NULL ,
[field_7] varchar(255) NULL ,
[field_8] varchar(255) NULL ,
[field_9] varchar(255) NULL ,
[field_10] varchar(255) NULL ,
[field_11] int NULL ,
[field_12] int NULL ,
[field_13] int NULL ,
[field_14] int NULL ,
[field_15] int NULL ,
[field_16] int NULL ,
[field_17] varchar(255) NULL ,
[field_18] varchar(255) NULL ,
[field_19] varchar(255) NULL ,
[field_20] varchar(255) NULL ,
[field_21] varchar(255) NULL ,
[field_22] varchar(255) NULL ,
[field_23] varchar(255) NULL ,
[field_24] varchar(255) NULL ,
[field_25] varchar(255) NULL ,
[field_26] varchar(255) NULL ,
[field_27] varchar(255) NULL ,
[field_28] varchar(255) NULL ,
[field_29] varchar(255) NULL ,
[note] varchar(255) NULL ,
[campaign_name] varchar(255) NOT NULL ,
[contact_campaign] varchar(255) NULL DEFAULT NULL ,
[date_campaign] varchar(255) NULL DEFAULT NULL 
)


GO

-- ----------------------------
-- Records of cc247other
-- ----------------------------

-- ----------------------------
-- Indexes structure for table cc247other
-- ----------------------------
CREATE INDEX [cc247other1_recstat_idx] ON [dbo].[cc247other]
([record_status] ASC) 
GO
CREATE INDEX [cc247other1_rectype_idx] ON [dbo].[cc247other]
([record_type] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table cc247other
-- ----------------------------
ALTER TABLE [dbo].[cc247other] ADD PRIMARY KEY ([chain_id], [chain_n])
GO

-- ----------------------------
-- Uniques structure for table cc247other
-- ----------------------------
ALTER TABLE [dbo].[cc247other] ADD UNIQUE ([record_id] ASC)
GO
