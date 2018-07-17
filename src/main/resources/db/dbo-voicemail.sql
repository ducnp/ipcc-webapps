/*
Navicat SQL Server Data Transfer

Source Server         : 172.16.1.122
Source Server Version : 110000
Source Host           : 172.16.1.122:1433
Source Database       : voice_mail
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-06-04 11:23:57
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
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'1', N'0988647484', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'1', N'0', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100001', N' Trung DÅ©ng', N' Vang', N'Banh kem', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'2', N'0989064338', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'2', N'0', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100002', N' Thu NhiÃªn', N' KHUT', N'Hoa', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'3', N'0968245558', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'3', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100003', N' Kiá»u Nhi', N' KHUT', N'Banh kem', N' Le Hoang An', N'29', N'2', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'4', N'0936010163', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'4', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100004', N' HoÃ ng Ã‚n', N' KHUT', N'Banh kem', N' Nhien', N'12', N'3', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'5', N'0903796484', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'5', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100005', N' Giang Há»“ng', N' KHUT', N'Banh kem', N' Le Hoang An', N'25', N'4', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'6', N'01234', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'6', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100006', N' Cáº©m Nhá»', N' KHUT', N'Banh kem', N' Le Hoang An', N'7', N'5', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'7', N'01222960675', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'7', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100007', N' TÃº Quá»³nh', N' KHUT', N'Banh kem', N' Le Hoang An', N'8', N'5', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'8', N'0985646639', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'8', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100008', N' KhÃ¡nh Thiá»‡n', N' Vang', N'Hoa', N' Le Hoang An', N'14', N'4', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'9', N'01264705067', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'9', N'0', null, null, null, null, null, null, null, N' ACB - CN SAI GON', N'100009', N' Dung Hoang', N' Kim Cuong', N'Hoa', N' Le Hoang An', N'9', N'12', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'10', N'01264705067', N'999991', N'999992', N'999993', N'999994', N'999995', null, null, N'999996', N'999997', N'999998', null, null, N'10', N'0', null, null, null, null, null, null, null, N' ACB - PGD PHAN HUY ICH', N'100010', N' Cáº©m Lá»›n', N' Vang', N'Hoa', N' Le Hoang An', N'12', N'11', N'0', N'0', N'0', N'0', N'0', N'BirthdayCampaignForm-Edit-0712.xlsx_26042018', N'2018-04-26 10:05:12')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'25', N'0988647484', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'0', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100001', N' Trung DÅ©ng', N' Vang', N'Banh kem', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'26', N'01264705067', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'1', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100001', N' Trung DÅ©ng', N' Vang', N'Banh kem', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'27', N'0989064338', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'22', N'0', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100002', N' Thu NhiÃªn', N' KHUT', N'Hoa', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'28', N'0903796466', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'22', N'1', null, null, null, null, null, null, null, N' ACB - CN CHAU VAN LIEM', N'100002', N' Thu NhiÃªn', N' KHUT', N'Hoa', N' Tran Xuan Bach', N'5', N'6', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'29', N'0968245558', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'23', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100003', N' Kiá»u Nhi', N' KHUT', N'Banh kem', N' Le Hoang An', N'29', N'2', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'30', N'0936010163', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'24', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100004', N' HoÃ ng Ã‚n', N' KHUT', N'Banh kem', N' Nhien', N'12', N'3', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'31', N'0903796484', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'25', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100005', N' Giang Há»“ng', N' KHUT', N'Banh kem', N' Le Hoang An', N'25', N'4', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'32', N'0922271327', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'25', N'1', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100005', N' Giang Há»“ng', N' KHUT', N'Banh kem', N' Le Hoang An', N'25', N'4', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'33', N'01234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'26', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100006', N' Cáº©m Nhá»', N' KHUT', N'Banh kem', N' Le Hoang An', N'7', N'5', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'34', N'01222960675', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100007', N' TÃº Quá»³nh', N' KHUT', N'Banh kem', N' Le Hoang An', N'8', N'5', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'35', N'02835142826', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'1', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100007', N' TÃº Quá»³nh', N' KHUT', N'Banh kem', N' Le Hoang An', N'8', N'5', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'36', N'0985646639', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'28', N'0', null, null, null, null, null, null, null, N' ACB - CN BINH THANH', N'100008', N' KhÃ¡nh Thiá»‡n', N' Vang', N'Hoa', N' Le Hoang An', N'14', N'4', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'37', N'01264705067', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'29', N'0', null, null, null, null, null, null, null, N' ACB - CN SAI GON', N'100009', N' Dung Hoang', N' Kim Cuong', N'Hoa', N' Le Hoang An', N'9', N'12', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO
INSERT INTO [dbo].[acbloyalty] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [BusinessUnit], [CustomerID], [CustomerName], [CustomerSegment], [Gift], [ManagerName], [DateOfBrith], [MonthOfBirth], [OtherReason01], [loyalty_qn_1], [ShiperName], [OtherReason02], [Feedback], [Contact_Campaign], [Date_Campaign]) VALUES (N'38', N'0989675298', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'30', N'0', null, null, null, null, null, null, null, N' ACB - PGD PHAN HUY ICH', N'100010', N' Cáº©m Lá»›n', N' Vang', N'Hoa', N' Le Hoang An', N'12', N'11', N'0', N'0', N'0', N'0', N'0', N'birthday_form.xlsx_04062018', N'2018-06-04 09:15:28')
GO
GO

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
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'1', N'0988647484', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'0', null, null, null, null, null, null, null, N'100001', N' Trung DÅ©ng', N'0', N'243768119', N' ACB - PGD BINH PHU', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'2', N'01264705067', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'1', null, null, null, null, null, null, null, N'100001', N' Trung DÅ©ng', N'0', N'243768119', N' ACB - PGD BINH PHU', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'3', N'0985646639', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'2', N'0', null, null, null, null, null, null, null, N'100002', N' KhÃ¡nh Thiá»‡n', N'0', N'243727209', N' ACB - PGD GO VAP', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'4', N'0936010163', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'0', null, null, null, null, null, null, null, N'100003', N' HoÃ ng Ã‚n', N'0', N'243709049', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'5', N'ch?', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'4', N'0', null, null, null, null, null, null, null, N'100004', N' Cáº©m Lá»›n', N'0', N'243709049', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'6', N'01234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'5', N'0', null, null, null, null, null, null, null, N'100006', N' Cáº©m Nhá»', N'0', N'243709049', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'7', N'01222960675', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'6', N'0', null, null, null, null, null, null, null, N'100007', N' TÃº Quá»³nh', N'0', N'null', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'8', N'02835142826', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'6', N'1', null, null, null, null, null, null, null, N'100007', N' TÃº Quá»³nh', N'0', N'null', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO
INSERT INTO [dbo].[acbsurvey] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [CustomerID], [CustomerName], [Feedback], [ACCTNBR], [TEN_CN_THUCHIEN], [survey_qn_1], [survey_qn_2], [survey_qn_3], [Note], [Contact_Campaign], [Date_Campaign]) VALUES (N'9', N'01264705067', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'7', N'0', null, null, null, null, null, null, null, N'100009', N' Dung Hoang', N'0', N'243709049', N' ACB - CN BAC NINH', null, null, null, null, N'survey_form.xlsx_16052018', N'2018-05-16 10:25:52')
GO
GO

-- ----------------------------
-- Table structure for brand_call
-- ----------------------------
DROP TABLE [dbo].[brand_call]
GO
CREATE TABLE [dbo].[brand_call] (
[id] int NOT NULL IDENTITY(1,1) ,
[show_value] nvarchar(255) NULL ,
[search_value] nvarchar(255) NULL ,
[description] nvarchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[brand_call]', RESEED, 18)
GO

-- ----------------------------
-- Records of brand_call
-- ----------------------------
SET IDENTITY_INSERT [dbo].[brand_call] ON
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'1', N'Khóa Thẻ', N'khoa_the', N'Khóa Thẻ')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'2', N'DVT - Kích Hoạt Thẻ', N'dvt_kich_hoat_the', N'DVT - Kích Hoạt Thẻ')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'3', N'DVT - Cấp Pin Thẻ', N'dvt_cap_pin_the', N'DVT - Cấp Pin Thẻ')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'4', N'DVT - Các Dịch Vụ Thẻ Khác', N'dvt_cac_dich_vu_the_khac', N'DVT - Các Dịch Vụ Thẻ Khác')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'5', N'DVNHS - Khách Hàng Cá Nhân', N'DVNHS_khach_hang_ca_nhan', N'DVNHS - Khách Hàng Cá Nhân')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'6', N'DVNHS - Khách Hàng', N'DVNHS_khach_hang', N'DVNHS - Khách Hàng')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'7', N'Thanh Toán', N'thanh_toan', N'Thanh Toán')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'8', N'DVTGKHCN - Tài Khoản Thanh Toán', N'DVTGKHCN_tai_khoan_thanh_toan', N'DVTGKHCN - Tài Khoản Thanh Toán')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'9', N'DVTGKHCN - Tài Khoản Tiết Kiệm', N'DVTGKHCN_tai_khoan_tiet_kiem', N'DVTGKHCN - Tài Khoản Tiết Kiệm')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'10', N'DVTGKHCN - Dịch Vụ Khác', N'DVTGKHCN_dich_vu_khac', N'DVTGKHCN - Dịch Vụ Khác')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'11', N'DVTGKHCN - Chuyển Tiền', N'DVTGKHCN_chuyen_tien', N'DVTGKHCN - Chuyển Tiền')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'12', N'KHCN - Dịch Vụ tiền vay', N'KHCN_dich_vu_tien_vay', N'KHCN - Dịch Vụ tiền vay')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'13', N'KHDN - Tài Khoản Tiền Gửi', N'KHCN_tai_khoan_tien_gui', N'KHDN - Tài Khoản Tiền Gửi')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'14', N'KHDN - Dịch Vụ Khác', N'KHCN_dich_vu_khac', N'KHDN - Dịch Vụ Khác')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'15', N'KHDN - Tài Khoản Tiền Vay', N'KHCN_tai_khoan_tien_vay', N'KHDN - Tài Khoản Tiền Vay')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'16', N'Kênh Dịch Vụ Tự Động', N'kenh_phuc_vu_tu_dong', N'Kênh Dịch Vụ Tự Động')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'17', N'English', N'english', N'English')
GO
GO
INSERT INTO [dbo].[brand_call] ([id], [show_value], [search_value], [description]) VALUES (N'18', N'Không tương tác', N'khong_tuong_tac', N'Không tương tác')
GO
GO
SET IDENTITY_INSERT [dbo].[brand_call] OFF
GO

-- ----------------------------
-- Table structure for brand_call_old
-- ----------------------------
DROP TABLE [dbo].[brand_call_old]
GO
CREATE TABLE [dbo].[brand_call_old] (
[id] int NOT NULL IDENTITY(1,1) ,
[show_value] nvarchar(255) NULL ,
[search_value] nvarchar(255) NULL ,
[description] nvarchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[brand_call_old]', RESEED, 28)
GO

-- ----------------------------
-- Records of brand_call_old
-- ----------------------------
SET IDENTITY_INSERT [dbo].[brand_call_old] ON
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'1', N'Khóa thẻ khẩn cấp', N'khoa_the_khan_cap', N'Khóa thẻ khẩn cấp')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'2', N'Dịch vụ thẻ', N'dich_vu_the', N'Dịch vụ thẻ')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'3', N'Dịch vụ ngân hàng số', N'dich_vu_ngan_hang_so', N'Dịch vụ ngân hàng số')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'4', N'Dịch vụ Thanh toán hóa đơn hoặc chuyển tiền', N'dich_vu_thanh_toan_hoa_don_hoac_chuyen_tien', N'Dịch vụ Thanh toán hóa đơn hoặc chuyển tiền')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'5', N'Dịch vụ tiền gửi dành cho KHCN', N'dich_vu_tien_gui_danh_cho_khcn', N'Dịch vụ tiền gửi dành cho KHCN')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'6', N'Dịch vụ tiền vay dành cho KHCN', N'dich_vu_tien_vay_danh_cho_khcn', N'Dịch vụ tiền vay dành cho KHCN')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'7', N'Dịch vụ tiền gửi và tiền vay dành cho KHDN', N'dich_vu_tien_gui_va_tien_vay_danh_cho_khcn', N'Dịch vụ tiền gửi và tiền vay dành cho KHDN')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'8', N'English', N'english', N'English')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'9', N'Khóa thẻ khẩn cấp VIP', N'khoa_the_khan_cap_vip', N'Khóa thẻ khẩn cấp VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'10', N'Dịch vụ thẻ VIP', N'dich_vu_the_vip', N'Dịch vụ thẻ VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'11', N'Dịch vụ ngân hàng số VIP', N'dich_vu_ngan_hang_so_vip', N'Dịch vụ ngân hàng số VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'12', N'Dịch vụ Thanh toán hóa đơn hoặc chuyển tiền VIP', N'dich_vu_thanh_toan_hoa_don_hoac_chuyen_tien_vip', N'Dịch vụ Thanh toán hóa đơn hoặc chuyển tiền VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'13', N'Dịch vụ tiền gửi dành cho KHCN VIP', N'dich_vu_tien_gui_danh_cho_khcn_vip', N'Dịch vụ tiền gửi dành cho KHCN VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'14', N'Dịch vụ tiền vay dành cho KHCN VIP', N'dich_vu_tien_vay_danh_cho_khcn_vip', N'Dịch vụ tiền vay dành cho KHCN VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'15', N'Dịch vụ tiền gửi và tiền vay dành cho KHDN VIP', N'dich_vu_tien_gui_va_tien_vay_danh_cho_khcn_vip', N'Dịch vụ tiền gửi và tiền vay dành cho KHDN VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'16', N'English VIP', N'english_vip', N'English VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'17', N'All KH thường', N'all_kh_thuong', N'All KH thường')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'18', N'All KH VIP', N'all_kh_vip', N'All KH VIP')
GO
GO
INSERT INTO [dbo].[brand_call_old] ([id], [show_value], [search_value], [description]) VALUES (N'28', N'KHCN - Dịch Vụ tiền vay', N'KHCN_dich_vu_tien_vay', N'Vay tiền mại dô')
GO
GO
SET IDENTITY_INSERT [dbo].[brand_call_old] OFF
GO

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
DBCC CHECKIDENT(N'[dbo].[campaign_name]', RESEED, 15)
GO

-- ----------------------------
-- Records of campaign_name
-- ----------------------------
SET IDENTITY_INSERT [dbo].[campaign_name] ON
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'9', N'campaign_name test 1', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'10', N'test01', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'11', N'campaign_name test 1', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'12', N'test01', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'13', N'campaign_name test 1', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_4","field_5","field_6","field_7","field_8","field_9","field_10","field_11","field_12","field_13","field_14","field_15","field_16","field_17","field_18","field_19","field_20","field_21","field_22","field_23","field_24","field_25","field_26","field_27","field_28","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'14', N'test01', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29",null]')
GO
GO
INSERT INTO [dbo].[campaign_name] ([id], [name], [header], [header_db]) VALUES (N'15', N'test01', N'["STT","ngày tạo","Mã KH","Họ tên KH","giới tính","cmnd","năm sinh","chức danh","số điện thoại","email","địa chỉ","số tài khoản","số thẻ","Ghi chú","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29","Status Check"]', N'["none_field","campaign_date","customer_id","customer_name","gender","tax_id","brithday","title","contact_info","email","address","account_number","card_number","note","field_1","field_2","field_3","field_10","field_11","field_15","field_16","field_17","field_21","field_22","field_29",null]')
GO
GO
SET IDENTITY_INSERT [dbo].[campaign_name] OFF
GO

-- ----------------------------
-- Table structure for campaign_survey
-- ----------------------------
DROP TABLE [dbo].[campaign_survey]
GO
CREATE TABLE [dbo].[campaign_survey] (
[id] int NOT NULL IDENTITY(1,1) ,
[stt] int NOT NULL ,
[customer_id] nvarchar(50) NOT NULL ,
[customer_name] nvarchar(256) NOT NULL ,
[cell_phone] nvarchar(20) NOT NULL ,
[acctrbn] nvarchar(20) NOT NULL ,
[ten_cn_thuc_hien] nvarchar(256) NOT NULL ,
[chain_id] int NULL ,
[chain_n] int NULL ,
[import_time] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[campaign_survey]', RESEED, 12)
GO

-- ----------------------------
-- Records of campaign_survey
-- ----------------------------
SET IDENTITY_INSERT [dbo].[campaign_survey] ON
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'7', N'1', N'111222', N'KIM JONG UN', N'123213412', N'2147483647', N'QUAN 1', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'8', N'2', N'444333', N'BARACK OBAMA', N'193423412', N'2147483647', N'QUAN 12', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'9', N'3', N'223451', N'VLADIMIR PUTIN', N'163131251', N'2147483647', N'QUAN 3', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'10', N'4', N'123412', N'MEGAN FOX', N'981237776', N'2147483647', N'QUAN 10', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'11', N'5', N'123421', N'GAL GADOT', N'126786743', N'2147483647', N'QUAN 5', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
INSERT INTO [dbo].[campaign_survey] ([id], [stt], [customer_id], [customer_name], [cell_phone], [acctrbn], [ten_cn_thuc_hien], [chain_id], [chain_n], [import_time]) VALUES (N'12', N'6', N'342123', N'SONG HYE KYO', N'212312312', N'2147483647', N'QUAN 6', N'1', N'2', N'2017-10-31 17:10:07.000')
GO
GO
SET IDENTITY_INSERT [dbo].[campaign_survey] OFF
GO

-- ----------------------------
-- Table structure for cc247loyalty_deb
-- ----------------------------
DROP TABLE [dbo].[cc247loyalty_deb]
GO
CREATE TABLE [dbo].[cc247loyalty_deb] (
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
[business_unit] varchar(150) NOT NULL ,
[customer_id] varchar(20) NOT NULL ,
[customer_name] varchar(250) NOT NULL ,
[customer_segment] varchar(10) NOT NULL ,
[gift] varchar(150) NOT NULL ,
[manager_name] varchar(250) NOT NULL ,
[loyalty_qn_1] varchar(25) NOT NULL ,
[other_reason01] varchar(250) NOT NULL ,
[shiper_name] varchar(250) NOT NULL ,
[other_reason02] varchar(250) NOT NULL ,
[feedback] varchar(250) NOT NULL ,
[date_of_birth] int NOT NULL ,
[month_of_birth] int NOT NULL 
)


GO

-- ----------------------------
-- Records of cc247loyalty_deb
-- ----------------------------
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'1', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'2', N'1298371524', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'3', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'2', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'HOANG NGUYEN C', N'KHUT', N'Hoa', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'4', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'5', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'6', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'4', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'7', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'4', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'8', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'5', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'9', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'5', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'10', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'6', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'11', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'7', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'12', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'7', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'13', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'8', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'14', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'9', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'15', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'10', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'16', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'10', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'17', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'11', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'18', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'11', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'19', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'12', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'20', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'12', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'21', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'13', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'22', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'13', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'23', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'14', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'24', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'15', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'25', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'15', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'26', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'16', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'27', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'17', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'28', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'18', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'29', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'18', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'30', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'19', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'31', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'19', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'32', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'20', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'33', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'20', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'34', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'35', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'36', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'22', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'37', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'23', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'38', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'23', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'39', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'24', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'40', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'25', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'41', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'26', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'42', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'26', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'43', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'44', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'45', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'28', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'46', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'28', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'47', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'29', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'48', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'29', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'49', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'30', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'50', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'31', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'51', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'31', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'52', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'32', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'53', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'33', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'54', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'34', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'55', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'34', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'56', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'35', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'57', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'35', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'58', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'36', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'59', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'36', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'60', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'37', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'61', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'37', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'62', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'38', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'63', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'39', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'64', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'39', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'65', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'40', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'66', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'41', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'67', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'42', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'68', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'42', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'69', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'43', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'70', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'43', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'71', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'44', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'72', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'44', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'73', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'45', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'74', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'45', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'75', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'46', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'76', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'47', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'77', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'47', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'78', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'48', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'79', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'49', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'80', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'50', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'81', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'50', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'82', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'51', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'83', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'51', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'84', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'52', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'85', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'52', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'86', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'53', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'87', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'53', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'88', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'54', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'89', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'55', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'90', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'55', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'91', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'56', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'92', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'57', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'93', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'58', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'94', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'58', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'95', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'59', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'96', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'59', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'97', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'60', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'98', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'60', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'99', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'61', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'100', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'61', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'101', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'62', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'102', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'63', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'103', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'63', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'104', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'64', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'105', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'65', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'106', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'66', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'107', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'66', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'108', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'67', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'109', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'67', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'110', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'68', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'111', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'68', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'112', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'69', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'113', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'69', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'114', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'70', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'115', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'71', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'116', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'71', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'117', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'72', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'118', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'73', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'119', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'74', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'120', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'74', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'121', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'75', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'122', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'75', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'123', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'76', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'124', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'76', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'125', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'77', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'126', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'77', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'127', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'78', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'128', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'79', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'129', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'79', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'130', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'80', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'131', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'81', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'132', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'82', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'133', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'82', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'134', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'83', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'135', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'83', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'136', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'84', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'137', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'84', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'138', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'85', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'139', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'85', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'140', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'86', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'141', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'87', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'142', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'87', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'143', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'88', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'144', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'89', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'145', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'90', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'146', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'90', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'147', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'91', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'148', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'91', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'149', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'92', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'150', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'92', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'151', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'93', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'152', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'93', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'153', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'94', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'154', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'95', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'155', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'95', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'156', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'96', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'157', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'97', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'158', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'98', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'159', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'98', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'160', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'99', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'161', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'99', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'162', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'100', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'163', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'100', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'164', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'101', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'165', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'101', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'166', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'102', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'167', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'103', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'168', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'103', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'169', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'104', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'170', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'105', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'171', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'106', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'172', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'106', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'173', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'107', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'174', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'107', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'175', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'108', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'176', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'108', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'177', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'109', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'178', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'109', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'179', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'110', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'180', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'111', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'181', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'111', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'182', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'112', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'183', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'113', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'184', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'114', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'185', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'114', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'186', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'115', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'187', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'115', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'188', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'116', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'189', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'116', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'190', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'117', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'191', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'117', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'192', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'118', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'193', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'119', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'194', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'119', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'195', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'120', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'196', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'121', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'197', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'122', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'198', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'122', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'199', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'123', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'200', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'123', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'201', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'124', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'202', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'124', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'203', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'125', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'204', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'125', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'205', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'126', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'206', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'127', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'207', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'127', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'208', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'128', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'209', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'129', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'210', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'130', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'211', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'130', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'212', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'131', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'213', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'131', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'214', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'132', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'215', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'132', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'216', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'133', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'217', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'133', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'218', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'134', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'219', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'135', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'220', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'135', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'221', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'136', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'222', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'137', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'223', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'138', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'224', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'138', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'225', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'139', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'226', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'139', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'227', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'140', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'228', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'140', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'229', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'141', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'230', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'141', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'231', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'142', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'232', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'143', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'233', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'143', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'234', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'144', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'235', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'145', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'236', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'146', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'237', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'146', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'238', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'147', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'239', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'147', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'240', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'148', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'241', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'148', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'242', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'149', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'243', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'149', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'244', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'150', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'245', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'151', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'246', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'151', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'247', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'152', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'248', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'153', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'249', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'154', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'250', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'154', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'251', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'155', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'252', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'155', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'253', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'156', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'254', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'156', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'255', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'157', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'256', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'157', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'257', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'158', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'258', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'159', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'259', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'159', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'260', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'160', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'261', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'161', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'262', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'162', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'263', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'162', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'264', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'163', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'265', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'163', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'266', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'164', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'267', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'164', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'268', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'165', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'269', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'165', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'270', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'166', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'271', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'167', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'272', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'167', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'273', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'168', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'274', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'169', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'275', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'170', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'276', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'170', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'277', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'171', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'278', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'171', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'279', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'172', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'280', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'172', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'281', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'173', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'282', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'173', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'283', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'174', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'284', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'175', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'285', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'175', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'286', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'176', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'287', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'177', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'288', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'178', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'289', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'178', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'290', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'179', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'291', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'179', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'KIM JONG UN', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'292', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'180', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'293', N'1298344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'180', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'BARACK OBAMA', N'KHUT', N'Banh kem', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'294', N'1231332234', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'181', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'295', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'181', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411505', N'DONALD TRUMP', N'Kim cuong', N'Banh kem', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'11', N'12')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'296', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'182', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411506', N'VLADIMIR PUTIN', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'23', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'297', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'183', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'298', N'1778344523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'183', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411507', N'MEGAN FOX', N'KHUT', N'Hoa', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'12', N'2')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'299', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'184', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411508', N'LE CONG VINH', N'KHUT', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'4', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'300', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'185', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411510', N'TIM COOK', N'KHUT', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'301', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'186', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'302', N'1298114523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'186', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411511', N'ELON MUSK', N'Bach Kim', N'Hoa', N'HOANG THUY C', N'0', N'0', N'0', N'0', N'0', N'14', N'6')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'303', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'187', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'304', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'187', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'305', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'188', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'HOANG NGUYEN C', N'KHUT', N'Hoa', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'306', N'1298371923', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'189', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'307', N'1298371523', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'189', N'1', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411503', N'PHAM THI B', N'Vang', N'Banh kem', N'NGUYEN VAN A', N'0', N'0', N'0', N'0', N'0', N'3', N'5')
GO
GO
INSERT INTO [dbo].[cc247loyalty_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [business_unit], [customer_id], [customer_name], [customer_segment], [gift], [manager_name], [loyalty_qn_1], [other_reason01], [shiper_name], [other_reason02], [feedback], [date_of_birth], [month_of_birth]) VALUES (N'308', N'2147483647', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'190', N'0', null, null, null, null, null, null, null, N'ACB - CN CHAU VAN LIEM', N'411504', N'HOANG NGUYEN C', N'KHUT', N'Hoa', N'NGUYEN THI B', N'0', N'0', N'0', N'0', N'0', N'2', N'4')
GO
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
[campaign_name] varchar(255) NULL ,
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
[note] varchar(255) NULL ,
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
[contact_campaign] varchar(250) NULL ,
[date_campaign] varchar(250) NULL 
)


GO

-- ----------------------------
-- Records of cc247other
-- ----------------------------
INSERT INTO [dbo].[cc247other] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [campaign_name], [campaign_date], [customer_id], [customer_name], [gender], [tax_id], [brithday], [title], [email], [address], [account_number], [card_number], [note], [field_1], [field_2], [field_3], [field_4], [field_5], [field_6], [field_7], [field_8], [field_9], [field_10], [field_11], [field_12], [field_13], [field_14], [field_15], [field_16], [field_17], [field_18], [field_19], [field_20], [field_21], [field_22], [field_23], [field_24], [field_25], [field_26], [field_27], [field_28], [field_29], [contact_campaign], [date_campaign]) VALUES (N'3', N'0972171369', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'2', N'0', null, null, null, null, null, null, null, N'c ampaign_name test 2', N'2018-01-01 21:00:00', N'12345', N'Hoang Anh Tuan', N'Nam', N'098za478', N'Khach Hang', null, N'tuanhoanganh1988@gmail.com', N'dia chi abc xyz', N'so tai khoan abc xyz', N'so the abc xyz', N'note abc,xyz', null, N'varchar 2', null, N'varchar 4', null, N'varchar 6', null, N'varchar 8', null, N'varchar 10', N'0', N'2', N'0', N'4', N'0', N'6', N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'1.23456', N'2.23456', null, N'4.23456', N'5.23456', null, N'7.23456', N'other_form_2.xlsx_09042018', N'2018-04-09 09:35:35')
GO
GO
INSERT INTO [dbo].[cc247other] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [campaign_name], [campaign_date], [customer_id], [customer_name], [gender], [tax_id], [brithday], [title], [email], [address], [account_number], [card_number], [note], [field_1], [field_2], [field_3], [field_4], [field_5], [field_6], [field_7], [field_8], [field_9], [field_10], [field_11], [field_12], [field_13], [field_14], [field_15], [field_16], [field_17], [field_18], [field_19], [field_20], [field_21], [field_22], [field_23], [field_24], [field_25], [field_26], [field_27], [field_28], [field_29], [contact_campaign], [date_campaign]) VALUES (N'4', N'0972171369', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'2', N'1', null, null, null, null, null, null, null, N'c ampaign_name test 2', N'2018-01-01 21:00:00', N'12345', N'Hoang Anh Tuan', N'Nam', N'098za478', N'Khach Hang', null, N'tuanhoanganh1988@gmail.com', N'dia chi abc xyz', N'so tai khoan abc xyz', N'so the abc xyz', N'note abc,xyz', null, N'varchar 2', null, N'varchar 4', null, N'varchar 6', null, N'varchar 8', null, N'varchar 10', N'0', N'2', N'0', N'4', N'0', N'6', N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'1.23456', N'2.23456', null, N'4.23456', N'5.23456', null, N'7.23456', N'other_form_2.xlsx_09042018', N'2018-04-09 09:35:35')
GO
GO
INSERT INTO [dbo].[cc247other] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [campaign_name], [campaign_date], [customer_id], [customer_name], [gender], [tax_id], [brithday], [title], [email], [address], [account_number], [card_number], [note], [field_1], [field_2], [field_3], [field_4], [field_5], [field_6], [field_7], [field_8], [field_9], [field_10], [field_11], [field_12], [field_13], [field_14], [field_15], [field_16], [field_17], [field_18], [field_19], [field_20], [field_21], [field_22], [field_23], [field_24], [field_25], [field_26], [field_27], [field_28], [field_29], [contact_campaign], [date_campaign]) VALUES (N'5', N'0972171369', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'0', null, null, null, null, null, null, null, N'c ampaign_name test 2', N'2018-01-01 21:00:00', N'12345', N'Hoang Anh Tuan', N'Nam', N'098za478', N'Khach Hang', null, N'tuanhoanganh1988@gmail.com', N'dia chi abc xyz', N'so tai khoan abc xyz', N'so the abc xyz', N'note abc,xyz', null, N'varchar 2', null, N'varchar 4', null, N'varchar 6', null, N'varchar 8', null, N'varchar 10', N'0', N'2', N'0', N'4', N'0', N'6', N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'1.23456', N'2.23456', null, N'4.23456', N'5.23456', null, N'7.23456', N'other_form_2.xlsx_09042018', N'2018-04-09 09:45:47')
GO
GO
INSERT INTO [dbo].[cc247other] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [campaign_name], [campaign_date], [customer_id], [customer_name], [gender], [tax_id], [brithday], [title], [email], [address], [account_number], [card_number], [note], [field_1], [field_2], [field_3], [field_4], [field_5], [field_6], [field_7], [field_8], [field_9], [field_10], [field_11], [field_12], [field_13], [field_14], [field_15], [field_16], [field_17], [field_18], [field_19], [field_20], [field_21], [field_22], [field_23], [field_24], [field_25], [field_26], [field_27], [field_28], [field_29], [contact_campaign], [date_campaign]) VALUES (N'6', N'0972171369', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'1', null, null, null, null, null, null, null, N'c ampaign_name test 2', N'2018-01-01 21:00:00', N'12345', N'Hoang Anh Tuan', N'Nam', N'098za478', N'Khach Hang', null, N'tuanhoanganh1988@gmail.com', N'dia chi abc xyz', N'so tai khoan abc xyz', N'so the abc xyz', N'note abc,xyz', null, N'varchar 2', null, N'varchar 4', null, N'varchar 6', null, N'varchar 8', null, N'varchar 10', N'0', N'2', N'0', N'4', N'0', N'6', N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'2018-01-01 01:00:00', null, N'1.23456', N'2.23456', null, N'4.23456', N'5.23456', null, N'7.23456', N'other_form_2.xlsx_09042018', N'2018-04-09 09:45:47')
GO
GO

-- ----------------------------
-- Table structure for cc247other1
-- ----------------------------
DROP TABLE [dbo].[cc247other1]
GO
CREATE TABLE [dbo].[cc247other1] (
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
-- Records of cc247other1
-- ----------------------------
INSERT INTO [dbo].[cc247other1] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [campaign_date], [customer_id], [customer_name], [gender], [tax_id], [brithday], [title], [email], [address], [account_number], [card_number], [field_1], [field_2], [field_3], [field_4], [field_5], [field_6], [field_7], [field_8], [field_9], [field_10], [field_11], [field_12], [field_13], [field_14], [field_15], [field_16], [field_17], [field_18], [field_19], [field_20], [field_21], [field_22], [field_23], [field_24], [field_25], [field_26], [field_27], [field_28], [field_29], [note], [campaign_name], [contact_campaign], [date_campaign]) VALUES (N'1', N'1', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'64800', N'111', null, null, N'1', N'0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, N'KhÃ¡ch hÃ ng pháº£n Ã¡nh bá»‹ lá»—i nhÆ°ng khÃ´ng nÃ³i lÃ½ do táº¡i sao.', N'conlaumoibiet', N'Kim Nháº­t ThÃ nh', null)
GO
GO

-- ----------------------------
-- Table structure for cc247survey_deb
-- ----------------------------
DROP TABLE [dbo].[cc247survey_deb]
GO
CREATE TABLE [dbo].[cc247survey_deb] (
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
[customer_id] varchar(20) NOT NULL ,
[customer_name] varchar(250) NOT NULL ,
[feedback] varchar(250) NOT NULL ,
[acctnbr] varchar(15) NOT NULL ,
[ten_cn_thuc_hien] varchar(255) NOT NULL ,
[survey_qn_1] varchar(10) NULL ,
[survey_qn_2] varchar(10) NULL ,
[survey_qn_3] varchar(10) NULL ,
[note] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of cc247survey_deb
-- ----------------------------
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'1', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'0', null, null, null, null, null, null, null, N'111222', N'KIM JONG UN', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'2', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'1', N'1', null, null, null, null, null, null, null, N'111222', N'KIM JONG UN', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'3', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'2', N'0', null, null, null, null, null, null, null, N'444333', N'BARACK OBAMA', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'4', N'163131251', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'0', null, null, null, null, null, null, null, N'223451', N'VLADIMIR PUTIN', N'0', N'2147483647', N'NGUYEN VAN C', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'5', N'163131252', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'3', N'1', null, null, null, null, null, null, null, N'223451', N'VLADIMIR PUTIN', N'0', N'2147483647', N'NGUYEN VAN C', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'6', N'981237776', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'4', N'0', null, null, null, null, null, null, null, N'123412', N'MEGAN FOX', N'0', N'2147483647', N'NGUYEN VAN D', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'7', N'126786743', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'5', N'0', null, null, null, null, null, null, null, N'123421', N'GAL GADOT', N'0', N'2147483647', N'NGUYEN VAN E', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'8', N'212312312', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'6', N'0', null, null, null, null, null, null, null, N'342123', N'SONG HYE KYO', N'0', N'2147483647', N'NGUYEN VAN F', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'9', N'212312313', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'6', N'1', null, null, null, null, null, null, null, N'342123', N'SONG HYE KYO', N'0', N'2147483647', N'NGUYEN VAN F', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'10', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'7', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'11', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'7', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'12', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'8', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'13', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'9', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'14', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'9', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'15', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'10', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'16', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'11', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'17', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'11', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'18', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'12', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'19', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'13', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'20', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'13', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'21', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'14', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'22', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'15', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'23', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'15', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'24', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'16', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'25', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'17', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'26', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'17', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'27', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'18', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'28', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'19', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'29', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'19', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'30', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'20', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'31', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'32', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'21', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'33', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'22', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'34', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'23', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'35', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'23', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'36', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'24', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'37', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'25', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'38', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'25', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'39', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'26', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'40', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'41', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'27', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'42', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'28', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'43', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'29', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'44', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'29', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'45', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'30', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'46', N'123213412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'31', N'0', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'47', N'123213413', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'31', N'1', null, null, null, null, null, null, null, N'111222', N'LE VAN LUONG', N'0', N'2147483647', N'NGUYEN VAN A', null, null, null, null)
GO
GO
INSERT INTO [dbo].[cc247survey_deb] ([record_id], [contact_info], [contact_info_type], [record_type], [record_status], [call_result], [attempt], [dial_sched_time], [call_time], [daily_from], [daily_till], [tz_dbid], [campaign_id], [agent_id], [chain_id], [chain_n], [group_id], [app_id], [treatments], [media_ref], [email_subject], [email_template_id], [switch_id], [customer_id], [customer_name], [feedback], [acctnbr], [ten_cn_thuc_hien], [survey_qn_1], [survey_qn_2], [survey_qn_3], [note]) VALUES (N'48', N'193423412', N'1', N'2', N'1', N'28', N'0', null, null, N'28800', N'72000', N'111', null, null, N'32', N'0', null, null, null, null, null, null, null, N'444333', N'HOANG THUY LINH', N'0', N'2147483647', N'NGUYEN VAN B', null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for customers_vip
-- ----------------------------
DROP TABLE [dbo].[customers_vip]
GO
CREATE TABLE [dbo].[customers_vip] (
[id] int NOT NULL ,
[customer_id] nvarchar(50) NOT NULL ,
[salucd] nvarchar(2) NOT NULL ,
[first_name] nvarchar(256) NOT NULL ,
[last_name] nvarchar(256) NOT NULL ,
[birthday] datetime NOT NULL ,
[personal_id] nvarchar(256) NOT NULL ,
[customer_type] nvarchar(50) NULL ,
[service_list] nvarchar(256) NULL ,
[phone1] nvarchar(20) NOT NULL ,
[phone2] nvarchar(20) NULL ,
[phone3] nvarchar(20) NULL ,
[phone4] nvarchar(20) NULL ,
[phone5] nvarchar(20) NULL ,
[email1] nvarchar(256) NULL ,
[email2] nvarchar(256) NULL ,
[facebook_id] nvarchar(256) NULL ,
[acb_staff] int NULL 
)


GO

-- ----------------------------
-- Records of customers_vip
-- ----------------------------

-- ----------------------------
-- Table structure for join_event
-- ----------------------------
DROP TABLE [dbo].[join_event]
GO
CREATE TABLE [dbo].[join_event] (
[id] int NOT NULL IDENTITY(1,1) ,
[location] nvarchar(255) NULL ,
[staff_name] nvarchar(255) NULL ,
[agency_name] nvarchar(255) NULL ,
[customer_name] nvarchar(15) NULL ,
[customer_phone] nvarchar(255) NULL ,
[call_time] datetime NULL ,
[call_status] int NULL DEFAULT ((-1)) ,
[call_result] int NULL DEFAULT ((-1)) ,
[import_time] datetime NULL ,
[record_path] nvarchar(255) NULL ,
[call_counts] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[join_event]', RESEED, 80)
GO

-- ----------------------------
-- Records of join_event
-- ----------------------------
SET IDENTITY_INSERT [dbo].[join_event] ON
GO
INSERT INTO [dbo].[join_event] ([id], [location], [staff_name], [agency_name], [customer_name], [customer_phone], [call_time], [call_status], [call_result], [import_time], [record_path], [call_counts]) VALUES (N'79', N'HCM 1 A', N'Nguyễn Văn A1', N'CN TPHCM 1 ', N'Nguyễn Thị B1', N'0903457196', null, N'0', N'0', N'2018-04-24 14:08:34.000', null, N'0')
GO
GO
INSERT INTO [dbo].[join_event] ([id], [location], [staff_name], [agency_name], [customer_name], [customer_phone], [call_time], [call_status], [call_result], [import_time], [record_path], [call_counts]) VALUES (N'80', N'HCM 1 A', N'Nguyễn Văn A2', N'CN TPHCM 2', N'Nguyễn Thị B2', N'2001', null, N'1', N'3', N'2018-04-24 14:08:34.000', N'2018/05/30/2001_1527670418842.wav', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[join_event] OFF
GO

-- ----------------------------
-- Table structure for log_voice_mail
-- ----------------------------
DROP TABLE [dbo].[log_voice_mail]
GO
CREATE TABLE [dbo].[log_voice_mail] (
[id] int NOT NULL IDENTITY(1,1) ,
[agent_note] nvarchar(255) NULL ,
[agent_seen_id] int NOT NULL ,
[agent_seen_name] varchar(255) NULL ,
[agent_seen_time] datetime NULL ,
[branch_call] varchar(255) NULL ,
[customer_name] nvarchar(255) NULL ,
[customer_phone] varchar(255) NULL ,
[customer_type] varchar(255) NULL ,
[date_record] datetime NULL ,
[path_file_record] varchar(255) NULL ,
[status_agent_seen] varchar(255) NULL ,
[call_id] nvarchar(100) NULL ,
[agent_email] nvarchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[log_voice_mail]', RESEED, 9821)
GO

-- ----------------------------
-- Records of log_voice_mail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[log_voice_mail] ON
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9800', N'alomienman', N'0', N'', N'2018-04-11 09:11:11.000', null, null, N'0903457196', null, N'2018-02-01 17:28:57.000', N'undefined/2018/02/01/0903457196_1517480937828.wav', N'2', N'VK61LR0R8D6FJ2BGBJS2HALUCS00004L', N'nhannt@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9803', N'hieutx test 01', N'0', N'', null, null, null, N'0903457196', null, N'2018-02-27 10:00:15.000', N'undefined/2018/02/27/0903457196_1519700415859.wav', N'1', N'UH8FMBPHQD0M1BGSO4OHALD48G00003D', N'hieutx@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9804', N'File xem rồồi nhé', N'0', N'', N'2018-05-17 09:25:46.000', null, null, N'0902220334', N'1', N'2018-03-15 10:56:55.000', N'undefined/2018/03/15/0902220334_1521086215262.wav', N'0', N'JGB37VAKOP12JD2GE0UCJMS1HK00001C', null)
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9806', N'Tuan Test', N'0', N'', N'2018-05-16 14:16:55.000', null, null, N'0902220334', null, N'2018-03-15 11:10:58.000', N'undefined/2018/03/15/0902220334_1521087058566.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK00001E', N'tuanha2@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9807', N'Tuan Test', N'0', N'', N'2018-05-16 14:16:57.000', null, null, N'0902220334', null, N'2018-03-15 11:18:50.000', N'undefined/2018/03/15/0902220334_1521087530701.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK00001G', N'tuanha2@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9808', N'dũng', N'0', N'', N'2018-05-17 09:55:45.000', null, null, N'0902220334', null, N'2018-03-15 11:36:47.000', N'undefined/2018/03/15/0902220334_1521088607553.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK00001L', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9809', N'', N'0', N'', N'2018-05-17 09:42:30.000', null, null, N'0902220334', null, N'2018-03-15 12:13:06.000', N'undefined/2018/03/15/0902220334_1521090786490.wav', N'0', N'JGB37VAKOP12JD2GE0UCJMS1HK00001P', null)
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9810', N'', N'0', N'', N'2018-05-17 09:42:33.000', null, null, N'0902220334', null, N'2018-03-15 12:34:18.000', N'undefined/2018/03/15/0902220334_1521092058603.wav', N'0', N'JGB37VAKOP12JD2GE0UCJMS1HK00001T', null)
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9811', N'xyz', N'0', N'', N'1900-01-01 00:00:00.000', null, null, N'0902220334', null, N'2018-03-15 12:37:55.000', N'undefined/2018/03/15/0902220334_1521092275316.wav', N'1', N'JGB37VAKOP12JD2GE0UCJMS1HK00001U', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9812', N'test note Dũng, ok', N'0', N'', N'1900-01-01 00:00:00.000', null, null, N'0902220334', null, N'2018-03-15 12:38:01.000', N'undefined/2018/03/15/0902220334_1521092281772.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK00001S', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9813', N'Hi', N'0', N'', N'2018-05-17 09:31:01.000', null, null, N'0902220334', null, N'2018-03-15 12:46:53.000', N'undefined/2018/03/15/0902220334_1521092813269.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK00001V', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9814', N'', N'0', N'', N'2018-05-17 09:11:58.000', null, null, N'0902220334', null, N'2018-03-15 12:54:20.000', N'undefined/2018/03/15/0902220334_1521093260699.wav', N'2', N'JGB37VAKOP12JD2GE0UCJMS1HK000021', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9815', N'', N'0', N'', N'2018-05-17 08:59:56.000', null, null, N'6001', null, N'2018-05-10 16:10:42.000', N'undefined/2018/05/10/6001_1525943440871.wav', N'2', null, N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9816', N'chưa ai nhận file này, thích ghi note', N'0', N'', N'2018-05-17 10:12:18.000', N'khong_tuong_tac', null, N'6001', null, N'2018-05-10 16:15:39.000', N'undefined/2018/05/10/6001_1525943739174.wav', N'2', null, N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9817', N'Tuan Test', N'0', N'', N'2018-05-16 14:17:05.000', null, null, N'0904672622', null, N'2018-05-12 15:49:15.000', N'undefined/2018/05/12/0904672622_1526114955818.wav', N'1', N'RK77O6VMUD51JALD5GTHNJ7B6800002M', N'tuanha2@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9818', N'', N'0', N'', N'1900-01-01 00:00:00.000', null, null, N'0904672622', null, N'2018-05-12 16:02:09.000', N'undefined/2018/05/12/0904672622_1526115729852.wav', N'1', N'RK77O6VMUD51JALD5GTHNJ7B6800002N', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9819', N'Tuan Test', N'0', N'', N'2018-05-16 14:17:08.000', null, null, N'0904672622', null, N'2018-05-12 16:03:26.000', N'undefined/2018/05/12/0904672622_1526115806659.wav', N'1', N'RK77O6VMUD51JALD5GTHNJ7B6800002O', N'tuanha2@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9820', N'Tuan Test', N'0', N'', N'2018-05-16 14:17:09.000', null, null, N'0904672622', null, N'2018-05-12 16:09:39.000', N'undefined/2018/05/12/0904672622_1526116179745.wav', N'2', N'RK77O6VMUD51JALD5GTHNJ7B6800002R', N'tuanha2@vnpt-technology.vn')
GO
GO
INSERT INTO [dbo].[log_voice_mail] ([id], [agent_note], [agent_seen_id], [agent_seen_name], [agent_seen_time], [branch_call], [customer_name], [customer_phone], [customer_type], [date_record], [path_file_record], [status_agent_seen], [call_id], [agent_email]) VALUES (N'9821', N'take note', N'0', N'', N'2018-05-26 10:56:44.000', null, null, N'0904672622', null, N'2018-05-12 16:41:11.000', N'undefined/2018/05/12/0904672622_1526118071990.wav', N'2', N'RK77O6VMUD51JALD5GTHNJ7B6800003B', N'ipcc_vnpt01@vnpt-technology.vn')
GO
GO
SET IDENTITY_INSERT [dbo].[log_voice_mail] OFF
GO

-- ----------------------------
-- Table structure for tmp
-- ----------------------------
DROP TABLE [dbo].[tmp]
GO
CREATE TABLE [dbo].[tmp] (
[id] int NOT NULL IDENTITY(1,1) ,
[time_stamp] timestamp NULL 
)


GO

-- ----------------------------
-- Records of tmp
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tmp] ON
GO
SET IDENTITY_INSERT [dbo].[tmp] OFF
GO

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE [dbo].[user_login]
GO
CREATE TABLE [dbo].[user_login] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(50) NOT NULL ,
[password] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of user_login
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user_login] ON
GO
INSERT INTO [dbo].[user_login] ([id], [username], [password]) VALUES (N'1', N'admin', N'admin')
GO
GO
SET IDENTITY_INSERT [dbo].[user_login] OFF
GO

-- ----------------------------
-- Procedure structure for InsertRecord
-- ----------------------------
DROP PROCEDURE [dbo].[InsertRecord]
GO

 CREATE Procedure [dbo].[InsertRecord] 
					@customer_name NVARCHAR(100),
					@customer_type NVARCHAR(50),
					@customer_phone NVARCHAR(15),
					@date_record NVARCHAR(100),
					@branch_call NVARCHAR(50),
					@path_file_record NVARCHAR(200),
					@call_id NVARCHAR(100)
 As
 BEGIN
---Your statements here
	INSERT INTO dbo.log_voice_mail
           (customer_name
           ,customer_type
           ,customer_phone
           ,date_record
           ,branch_call
           ,path_file_record
					 ,call_id
		   ,status_agent_seen
		   ,agent_seen_id
		   ,agent_seen_name
		   ,agent_seen_time
		   ,agent_note)
     VALUES
           (@customer_name
           ,@customer_type
           ,@customer_phone
           ,@date_record
           ,@branch_call
           ,@path_file_record
					 ,@call_id
		   ,0
		   ,0
		   ,''
		   ,''
		   ,'')
 END

GO

-- ----------------------------
-- Procedure structure for JE_InitCallStatus
-- ----------------------------
DROP PROCEDURE [dbo].[JE_InitCallStatus]
GO
CREATE PROCEDURE [dbo].[JE_InitCallStatus]
@call_time NVARCHAR(50),
@call_status NVARCHAR(50),
@id NVARCHAR(10)
AS
BEGIN
  UPDATE join_event SET call_status = @call_status, call_time = @call_time WHERE id = @id;
END

GO

-- ----------------------------
-- Procedure structure for JE_Insert
-- ----------------------------
DROP PROCEDURE [dbo].[JE_Insert]
GO
CREATE PROCEDURE [dbo].[JE_Insert]
@location NVARCHAR(255),
@staff_name NVARCHAR(255),
@agency_name NVARCHAR(255),
@customer_name NVARCHAR(255),
@customer_phone NVARCHAR(15),
@import_time NVARCHAR(50)
AS
BEGIN
  INSERT INTO join_event (location, staff_name, agency_name, customer_name, customer_phone, import_time) 
		VALUES (@location, @staff_name, @agency_name, @customer_name, @customer_phone, @import_time);
END

GO

-- ----------------------------
-- Procedure structure for JE_UpdateAnswer
-- ----------------------------
DROP PROCEDURE [dbo].[JE_UpdateAnswer]
GO
CREATE PROCEDURE [dbo].[JE_UpdateAnswer]
@call_status NVARCHAR(15),
@call_result NVARCHAR(10),
@call_time NVARCHAR(50),
@id NVARCHAR (10)
AS
BEGIN
  UPDATE join_event SET call_status = @call_status, call_result = @call_result, call_time = @call_time WHERE id = @id;
END

GO

-- ----------------------------
-- Procedure structure for JE_UpdatePathRecord
-- ----------------------------
DROP PROCEDURE [dbo].[JE_UpdatePathRecord]
GO
CREATE PROCEDURE [dbo].[JE_UpdatePathRecord]
@path_record NVARCHAR(255),
@id NVARCHAR(11)
AS
BEGIN
  UPDATE join_event SET record_path = @path_record WHERE id = @id
END

GO

-- ----------------------------
-- Procedure structure for SU_InitCallStatus
-- ----------------------------
DROP PROCEDURE [dbo].[SU_InitCallStatus]
GO
CREATE PROCEDURE [dbo].[SU_InitCallStatus]
@call_time NVARCHAR(50),
@call_status NVARCHAR(50),
@id NVARCHAR(10)
AS
BEGIN
  UPDATE survey SET call_status = @call_status, call_time = @call_time WHERE id = @id;
END

GO

-- ----------------------------
-- Procedure structure for SU_Insert
-- ----------------------------
DROP PROCEDURE [dbo].[SU_Insert]
GO
CREATE PROCEDURE [dbo].[SU_Insert]
@department_name NVARCHAR(255),
@customer_name NVARCHAR(255),
@customer_phone NVARCHAR(15),
@import_time NVARCHAR(50)
AS
BEGIN
  INSERT INTO survey (department_name, customer_name, customer_phone, import_time) 
		VALUES (@department_name, @customer_name, @customer_phone, @import_time);
END

GO

-- ----------------------------
-- Procedure structure for SU_UpdateAnswer
-- ----------------------------
DROP PROCEDURE [dbo].[SU_UpdateAnswer]
GO
CREATE PROCEDURE [dbo].[SU_UpdateAnswer]
@call_status NVARCHAR(15),
@call_result NVARCHAR(10),
@call_time NVARCHAR(50),
@anwser1 NVARCHAR (10),
@anwser2 NVARCHAR (10),
@anwser3 NVARCHAR (10),
@id NVARCHAR (10)
AS
BEGIN
  UPDATE survey SET 
		call_status = @call_status, 
		call_result = @call_result,
		call_time = @call_time,
		answer1 = @anwser1,
		answer2 = @anwser2,
		answer3 = @anwser3
	WHERE id = @id;
END

GO

-- ----------------------------
-- Indexes structure for table acbloyalty
-- ----------------------------
CREATE INDEX [acbloyalty_recstat_idx] ON [dbo].[acbloyalty]
([record_status] ASC) 
GO
CREATE INDEX [acbloyalty_rectype_idx] ON [dbo].[acbloyalty]
([record_type] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table acbloyalty
-- ----------------------------
ALTER TABLE [dbo].[acbloyalty] ADD PRIMARY KEY ([chain_id], [chain_n])
GO

-- ----------------------------
-- Uniques structure for table acbloyalty
-- ----------------------------
ALTER TABLE [dbo].[acbloyalty] ADD UNIQUE ([record_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table acbsurvey
-- ----------------------------
CREATE INDEX [acbsurvey_recstat_idx] ON [dbo].[acbsurvey]
([record_status] ASC) 
GO
CREATE INDEX [acbsurvey_rectype_idx] ON [dbo].[acbsurvey]
([record_type] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table acbsurvey
-- ----------------------------
ALTER TABLE [dbo].[acbsurvey] ADD PRIMARY KEY ([chain_id], [chain_n])
GO

-- ----------------------------
-- Uniques structure for table acbsurvey
-- ----------------------------
ALTER TABLE [dbo].[acbsurvey] ADD UNIQUE ([record_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table campaign_survey
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table campaign_survey
-- ----------------------------
ALTER TABLE [dbo].[campaign_survey] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table campaign_survey
-- ----------------------------
ALTER TABLE [dbo].[campaign_survey] ADD UNIQUE ([stt] ASC)
GO

-- ----------------------------
-- Indexes structure for table cc247loyalty_deb
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cc247loyalty_deb
-- ----------------------------
ALTER TABLE [dbo].[cc247loyalty_deb] ADD PRIMARY KEY ([chain_id], [chain_n])
GO

-- ----------------------------
-- Indexes structure for table cc247other
-- ----------------------------

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

-- ----------------------------
-- Indexes structure for table cc247other1
-- ----------------------------
CREATE INDEX [cc247other1_recstat_idx] ON [dbo].[cc247other1]
([record_status] ASC) 
GO
CREATE INDEX [cc247other1_rectype_idx] ON [dbo].[cc247other1]
([record_type] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table cc247other1
-- ----------------------------
ALTER TABLE [dbo].[cc247other1] ADD PRIMARY KEY ([chain_id], [chain_n])
GO

-- ----------------------------
-- Uniques structure for table cc247other1
-- ----------------------------
ALTER TABLE [dbo].[cc247other1] ADD UNIQUE ([record_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table customers_vip
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table customers_vip
-- ----------------------------
ALTER TABLE [dbo].[customers_vip] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table customers_vip
-- ----------------------------
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([phone5] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([phone4] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([phone3] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([phone2] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([phone1] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([email1] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([email2] ASC)
GO
ALTER TABLE [dbo].[customers_vip] ADD UNIQUE ([customer_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table join_event
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table join_event
-- ----------------------------
ALTER TABLE [dbo].[join_event] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table log_voice_mail
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table log_voice_mail
-- ----------------------------
ALTER TABLE [dbo].[log_voice_mail] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table tmp
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tmp
-- ----------------------------
ALTER TABLE [dbo].[tmp] ADD PRIMARY KEY ([id])
GO
