USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Spell__23E931E9]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Spell__22F50DB0]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__IsPos__2200E977]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Spell__210CC53E]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Regen__2018A105]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCleri__Dmg__1F247CCC]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCleri__Hit__1E305893]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Magic__1D3C345A]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Dexte__1C481021]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Const__1B53EBE8]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Wisdo__1A5FC7AF]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Intel__196BA376]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Stren__18777F3D]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Armor__17835B04]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCleric__MP__168F36CB]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCleric__HP__159B1292]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Color__14A6EE59]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Stage__13B2CA20]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__DropR__12BEA5E7]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Level__11CA81AE]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Class__10D65D75]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Worth__0FE2393C]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Encha__0EEE1503]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Carry__0DF9F0CA]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Flags__0D05CC91]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Displ__0C11A858]
GO
ALTER TABLE [dbo].[WeaponCleric] DROP CONSTRAINT [DF__WeaponCle__Image__0B1D841F]
GO
/****** Object:  Table [dbo].[WeaponCleric]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponCleric]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponCleric]
GO
/****** Object:  Table [dbo].[WeaponCleric]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponCleric](
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
 CONSTRAINT [PK__WeaponCl__541D0AF1A842DAE4] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponCleric] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponCleric] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 8, 0, 32901, N'Weapon', N'NonPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 3000, 24500, 1, N'', N'Cleric', 8, 20, 30, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Hermes', N'Wands', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 9)
INSERT [dbo].[WeaponCleric] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 26, 0, 32953, N'Weapon', N'PerishableUpgradeWeaponTwoHand', N'Both', N'None', N'None', 10, 1, 9000, 80000, 1, N'', N'Cleric', 19, 80, 160, CAST(0.10 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Holy Diana', N'Staves', 400, 400, 3, 0, 1, 1, 0, 0, 5, 0, 5, 0, 2, 2, 1, 9)
INSERT [dbo].[WeaponCleric] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 205, 0, 33956, N'Weapon', N'NonPerishableUpgradeWeapon', N'Both', N'None', N'None', 8, 1, 9000, 50000, 1, N'', N'Cleric', 21, 90, 140, CAST(0.20 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Avenger', N'Swords', 0, 600, 2, 0, 2, 1, 0, 1, 0, 0, 8, 0, 1, 2, 1, 9)
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Image__0B1D841F]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Displ__0C11A858]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Flags__0D05CC91]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Carry__0DF9F0CA]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Encha__0EEE1503]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Worth__0FE2393C]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Class__10D65D75]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Level__11CA81AE]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__DropR__12BEA5E7]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Stage__13B2CA20]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Color__14A6EE59]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCleric__HP__159B1292]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCleric__MP__168F36CB]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Armor__17835B04]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Stren__18777F3D]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Intel__196BA376]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Wisdo__1A5FC7AF]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Const__1B53EBE8]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Dexte__1C481021]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Magic__1D3C345A]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCleri__Hit__1E305893]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCleri__Dmg__1F247CCC]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Regen__2018A105]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Spell__210CC53E]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__IsPos__2200E977]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Spell__22F50DB0]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponCleric] ADD  CONSTRAINT [DF__WeaponCle__Spell__23E931E9]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
