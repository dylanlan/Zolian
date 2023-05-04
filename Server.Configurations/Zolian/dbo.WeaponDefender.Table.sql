USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Spell__6C98FCFF]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Spell__6BA4D8C6]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__IsPos__6AB0B48D]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Spell__69BC9054]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Regen__68C86C1B]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDefen__Dmg__67D447E2]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDefen__Hit__66E023A9]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Magic__65EBFF70]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Dexte__64F7DB37]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Const__6403B6FE]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Wisdo__630F92C5]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Intel__621B6E8C]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Stren__61274A53]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Armor__6033261A]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDefend__MP__5F3F01E1]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDefend__HP__5E4ADDA8]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Color__5D56B96F]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Stage__5C629536]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__DropR__5B6E70FD]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Level__5A7A4CC4]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Class__5986288B]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Worth__58920452]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Encha__579DE019]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Carry__56A9BBE0]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Flags__55B597A7]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Displ__54C1736E]
GO
ALTER TABLE [dbo].[WeaponDefender] DROP CONSTRAINT [DF__WeaponDef__Image__53CD4F35]
GO
/****** Object:  Table [dbo].[WeaponDefender]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponDefender]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponDefender]
GO
/****** Object:  Table [dbo].[WeaponDefender]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponDefender](
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
 CONSTRAINT [PK__WeaponDe__541D0AF1092EB14A] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponDefender] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 128, 0, 46294, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 15, 1, 200000, 5000000, 1, N'', N'Defender', 99, 1215, 1500, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Knight Lance', N'Polearms', 1000, 1000, 3, 2, 2, 2, 2, 2, 10, 10, 10, 0, 1, 2, 1, 9)
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 23, 0, 32950, N'Weapon', N'NonPerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 47, 1, 80000, 62200, 1, N'', N'Defender', 86, 600, 625, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gladius', N'Swords', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 1, 2, 9)
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 130, 0, 32948, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 55, 1, 250000, 200000, 1, N'', N'Defender', 97, 750, 800, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Gold Kindjal', N'Swords', 1000, 0, 5, 0, 0, 0, 0, 0, 10, 3, 3, 0, 2, 1, 1, 9)
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (4, 21, 0, 32948, N'Weapon', N'NonPerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 10, 1, 90000, 73400, 1, N'', N'Defender', 90, 633, 650, CAST(0.40 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Kindjal', N'Swords', 500, 0, 3, 0, 0, 0, 0, 0, 0, 2, 2, 0, 3, 1, 2, 9)
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (5, 130, 0, 32948, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Defender', 99, 2500, 2650, CAST(0.20 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Golden Dragon Buster Blade', N'Swords', 1000, 1500, 8, 3, 3, 3, 3, 3, 5, 15, 12, 0, 3, 2, 0, 9)
INSERT [dbo].[WeaponDefender] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (6, 168, 0, 43048, N'Weapon', N'NonPerishableNoBankWeaponTwoHand', N'Both', N'None', N'None', 34, 1, 300000, 500000, 1, N'', N'Defender', 99, 2677, 2780, CAST(0.20 AS Decimal(3, 2)), N'Master', 0, N'Lavender', N'', N'Silver Dragon Halberd', N'Polearms', 500, 500, 3, 10, 0, 0, 5, 5, 15, 30, 15, 5, 0, 0, 1, 9)
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Image__53CD4F35]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Displ__54C1736E]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Flags__55B597A7]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Carry__56A9BBE0]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Encha__579DE019]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Worth__58920452]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Class__5986288B]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Level__5A7A4CC4]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__DropR__5B6E70FD]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Stage__5C629536]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Color__5D56B96F]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDefend__HP__5E4ADDA8]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDefend__MP__5F3F01E1]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Armor__6033261A]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Stren__61274A53]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Intel__621B6E8C]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Wisdo__630F92C5]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Const__6403B6FE]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Dexte__64F7DB37]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Magic__65EBFF70]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDefen__Hit__66E023A9]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDefen__Dmg__67D447E2]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Regen__68C86C1B]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Spell__69BC9054]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__IsPos__6AB0B48D]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Spell__6BA4D8C6]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponDefender] ADD  CONSTRAINT [DF__WeaponDef__Spell__6C98FCFF]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
