USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Spell__50F0E28A]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Spell__4FFCBE51]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__IsPos__4F089A18]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Spell__4E1475DF]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Regen__4D2051A6]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBerse__Dmg__4C2C2D6D]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBerse__Hit__4B380934]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Magic__4A43E4FB]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Dexte__494FC0C2]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Const__485B9C89]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Wisdo__47677850]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Intel__46735417]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Stren__457F2FDE]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Armor__448B0BA5]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBerser__MP__4396E76C]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBerser__HP__42A2C333]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Color__41AE9EFA]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Stage__40BA7AC1]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__DropR__3FC65688]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Level__3ED2324F]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Class__3DDE0E16]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Worth__3CE9E9DD]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Encha__3BF5C5A4]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Carry__3B01A16B]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Flags__3A0D7D32]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Displ__391958F9]
GO
ALTER TABLE [dbo].[WeaponBerserker] DROP CONSTRAINT [DF__WeaponBer__Image__382534C0]
GO
/****** Object:  Table [dbo].[WeaponBerserker]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponBerserker]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponBerserker]
GO
/****** Object:  Table [dbo].[WeaponBerserker]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponBerserker](
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
 CONSTRAINT [PK__WeaponBe__541D0AF1B0D2262A] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponBerserker] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 45, 0, 33285, N'Weapon', N'DualPerishableUpgradeWeapon', N'Both', N'None', N'None', 22, 1, 40000, 100000, 1, N'', N'Berserker', 85, 525, 800, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Chain Mace', N'Weapons', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 10, 0, 3, 1, 2, 9)
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 56, 0, 33296, N'Weapon', N'DualNonPerishableUpgradeNoBankWeapon', N'Both', N'None', N'None', 30, 1, 40000, 123000, 1, N'', N'Berserker', 90, 650, 680, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Cutlass', N'Foreign', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 47, 0, 33287, N'Weapon', N'DualNonPerishableUpgradeNoBankWeapon', N'Both', N'None', N'None', 10, 1, 10000, 30000, 1, N'', N'Berserker', 47, 275, 290, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Scimitar', N'Foreign', 0, -1000, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 9)
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (4, 209, 0, 33284, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 59, 1, 200000, 0, 1, N'', N'Berserker', 95, 700, 850, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Stone Hammer', N'Weapons', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 3, 1, 2, 9)
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (5, 43, 0, 33283, N'Weapon', N'DualNonPerishableUpgradeNoBankWeapon', N'Both', N'None', N'None', 12, 1, 70000, 0, 1, N'', N'Berserker', 36, 220, 240, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Wood Axe', N'Axes', 0, -1000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 9)
INSERT [dbo].[WeaponBerserker] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (6, 191, 0, 42884, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Berserker', 99, 2700, 2900, CAST(0.20 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Blood Bane', N'Knight', 1500, 1000, 0, 3, 3, 3, 3, 3, 5, 15, 15, 0, 1, 2, 1, 9)
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Image__382534C0]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Displ__391958F9]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Flags__3A0D7D32]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Carry__3B01A16B]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Encha__3BF5C5A4]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Worth__3CE9E9DD]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Class__3DDE0E16]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Level__3ED2324F]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__DropR__3FC65688]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Stage__40BA7AC1]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Color__41AE9EFA]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBerser__HP__42A2C333]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBerser__MP__4396E76C]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Armor__448B0BA5]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Stren__457F2FDE]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Intel__46735417]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Wisdo__47677850]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Const__485B9C89]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Dexte__494FC0C2]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Magic__4A43E4FB]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBerse__Hit__4B380934]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBerse__Dmg__4C2C2D6D]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Regen__4D2051A6]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Spell__4E1475DF]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__IsPos__4F089A18]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Spell__4FFCBE51]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponBerserker] ADD  CONSTRAINT [DF__WeaponBer__Spell__50F0E28A]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
