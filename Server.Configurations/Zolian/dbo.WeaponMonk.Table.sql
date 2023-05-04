USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Spell__5B3966D3]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Spell__5A45429A]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__IsPos__59511E61]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Spell__585CFA28]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Regen__5768D5EF]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMonk__Dmg__5674B1B6]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMonk__Hit__55808D7D]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Magic__548C6944]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Dexte__5398450B]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Const__52A420D2]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Wisdo__51AFFC99]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Intel__50BBD860]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Stren__4FC7B427]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Armor__4ED38FEE]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMonk__MP__4DDF6BB5]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMonk__HP__4CEB477C]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Color__4BF72343]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Stage__4B02FF0A]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__DropR__4A0EDAD1]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Level__491AB698]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Class__4826925F]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Worth__47326E26]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Encha__463E49ED]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Carry__454A25B4]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Flags__4456017B]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Displ__4361DD42]
GO
ALTER TABLE [dbo].[WeaponMonk] DROP CONSTRAINT [DF__WeaponMon__Image__426DB909]
GO
/****** Object:  Table [dbo].[WeaponMonk]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponMonk]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponMonk]
GO
/****** Object:  Table [dbo].[WeaponMonk]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponMonk](
	[WeaponId] [int] NOT NULL,
	[Image] [int] NOT NULL,
	[OffHandImage] [int] NULL,
	[DisplayImage] [int] NOT NULL,
	[ScriptName] [varchar](20) NULL,
	[Flags] [varchar](40) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[SecondaryOffensiveElement] [varchar](15) NOT NULL,
	[SecondaryDefensiveElement] [varchar](15) NOT NULL,
	[CarryWeight] [int] NOT NULL,
	[Enchantable] [bit] NOT NULL,
	[MaxDurability] [int] NOT NULL,
	[Worth] [int] NOT NULL,
	[EquipmentSlot] [int] NOT NULL,
	[NpcKey] [varchar](20) NULL,
	[Class] [varchar](12) NOT NULL,
	[LevelRequired] [int] NOT NULL,
	[DmgMin] [int] NOT NULL,
	[DmgMax] [int] NOT NULL,
	[DropRate] [decimal](3, 2) NOT NULL,
	[StageRequired] [varchar](12) NOT NULL,
	[HasPants] [bit] NOT NULL,
	[Color] [varchar](15) NOT NULL,
	[WeaponScript] [varchar](20) NULL,
	[Name] [varchar](30) NOT NULL,
	[GroupIn] [varchar](15) NULL,
	[HP] [int] NOT NULL,
	[MP] [int] NOT NULL,
	[ArmorClass] [int] NOT NULL,
	[Strength] [int] NOT NULL,
	[Intelligence] [int] NOT NULL,
	[Wisdom] [int] NOT NULL,
	[Constitution] [int] NOT NULL,
	[Dexterity] [int] NOT NULL,
	[MagicResistance] [int] NOT NULL,
	[Hit] [int] NOT NULL,
	[Dmg] [int] NOT NULL,
	[Regen] [int] NOT NULL,
	[SpellLinesModifier] [int] NOT NULL,
	[IsPositiveSpellLines] [int] NOT NULL,
	[SpellMinValue] [int] NOT NULL,
	[SpellMaxValue] [int] NOT NULL,
 CONSTRAINT [PK__WeaponMo__541D0AF199CE35CC] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponMonk] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponMonk] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 86, 0, 33866, N'Weapon', N'DualNonPerishableUpgradeWeapon', N'Both', N'None', N'None', 6, 1, 120000, 20000, 1, N'', N'Monk', 28, 150, 170, CAST(0.25 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Razor Claws', N'Martial', 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 5, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponMonk] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 131, 0, 42883, N'Weapon', N'NonPerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 4, 1, 100000, 15000, 1, N'', N'Monk', 15, 33, 55, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Nunchucks', N'Martial', 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 2, 0, 1, 1, 1, 9)
INSERT [dbo].[WeaponMonk] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 52, 0, 33292, N'Weapon', N'NonPerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 12, 1, 80000, 35000, 1, N'', N'Monk', 41, 250, 275, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Metal Chain', N'Martial', 0, -500, 2, 3, 0, 0, 0, -3, 0, 0, 10, 0, 1, 1, 1, 9)
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Image__426DB909]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Displ__4361DD42]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Flags__4456017B]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Carry__454A25B4]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Encha__463E49ED]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Worth__47326E26]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Class__4826925F]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Level__491AB698]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__DropR__4A0EDAD1]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Stage__4B02FF0A]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Color__4BF72343]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMonk__HP__4CEB477C]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMonk__MP__4DDF6BB5]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Armor__4ED38FEE]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Stren__4FC7B427]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Intel__50BBD860]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Wisdo__51AFFC99]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Const__52A420D2]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Dexte__5398450B]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Magic__548C6944]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMonk__Hit__55808D7D]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMonk__Dmg__5674B1B6]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Regen__5768D5EF]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Spell__585CFA28]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__IsPos__59511E61]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Spell__5A45429A]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponMonk] ADD  CONSTRAINT [DF__WeaponMon__Spell__5B3966D3]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
