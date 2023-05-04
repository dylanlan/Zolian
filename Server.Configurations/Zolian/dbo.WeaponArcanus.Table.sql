USE [Zolian]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Spell__3F914C5E]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Spell__3E9D2825]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__IsPos__3DA903EC]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Spell__3CB4DFB3]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Regen__3BC0BB7A]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArcan__Dmg__3ACC9741]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArcan__Hit__39D87308]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Magic__38E44ECF]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Dexte__37F02A96]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Const__36FC065D]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Wisdo__3607E224]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Intel__3513BDEB]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Stren__341F99B2]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Armor__332B7579]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArcanu__MP__32375140]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArcanu__HP__31432D07]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Color__304F08CE]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Stage__2F5AE495]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__DropR__2E66C05C]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Level__2D729C23]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Class__2C7E77EA]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Worth__2B8A53B1]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Encha__2A962F78]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Carry__29A20B3F]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Flags__28ADE706]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Displ__27B9C2CD]
GO
ALTER TABLE [dbo].[WeaponArcanus] DROP CONSTRAINT [DF__WeaponArc__Image__26C59E94]
GO
/****** Object:  Table [dbo].[WeaponArcanus]    Script Date: 5/4/2023 1:13:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeaponArcanus]') AND type in (N'U'))
DROP TABLE [dbo].[WeaponArcanus]
GO
/****** Object:  Table [dbo].[WeaponArcanus]    Script Date: 5/4/2023 1:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeaponArcanus](
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
 CONSTRAINT [PK__WeaponAr__541D0AF136E89180] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeaponArcanus] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[WeaponArcanus] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (1, 7, 0, 32900, N'Weapon', N'NonPerishableUpgradeWeapon', N'Both', N'None', N'None', 5, 1, 3000, 24500, 1, N'', N'Arcanus', 8, 30, 30, CAST(0.30 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Magus Ares', N'Wands', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 9)
INSERT [dbo].[WeaponArcanus] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (2, 9, 0, 32902, N'Weapon', N'NonPerishableUpgradeWeapon', N'Both', N'None', N'None', 6, 1, 5000, 37200, 1, N'', N'Arcanus', 12, 55, 90, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Magus Zeus', N'Wands', 0, 300, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, 2, 1, 9)
INSERT [dbo].[WeaponArcanus] ([WeaponId], [Image], [OffHandImage], [DisplayImage], [ScriptName], [Flags], [Gender], [SecondaryOffensiveElement], [SecondaryDefensiveElement], [CarryWeight], [Enchantable], [MaxDurability], [Worth], [EquipmentSlot], [NpcKey], [Class], [LevelRequired], [DmgMin], [DmgMax], [DropRate], [StageRequired], [HasPants], [Color], [WeaponScript], [Name], [GroupIn], [HP], [MP], [ArmorClass], [Strength], [Intelligence], [Wisdom], [Constitution], [Dexterity], [MagicResistance], [Hit], [Dmg], [Regen], [SpellLinesModifier], [IsPositiveSpellLines], [SpellMinValue], [SpellMaxValue]) VALUES (3, 150, 0, 35050, N'Weapon', N'NonPerishableUpgradeWeapon', N'Both', N'None', N'None', 6, 1, 7200, 59000, 1, N'', N'Arcanus', 20, 90, 150, CAST(0.15 AS Decimal(3, 2)), N'Class', 0, N'Lavender', N'', N'Ether Wand', N'Wands', 0, 1000, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0, 2, 2, 1, 5)
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Image__26C59E94]  DEFAULT ((0)) FOR [Image]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Displ__27B9C2CD]  DEFAULT ((0)) FOR [DisplayImage]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Flags__28ADE706]  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Carry__29A20B3F]  DEFAULT ((0)) FOR [CarryWeight]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Encha__2A962F78]  DEFAULT ((0)) FOR [Enchantable]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Worth__2B8A53B1]  DEFAULT ((0)) FOR [Worth]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Class__2C7E77EA]  DEFAULT ((0)) FOR [Class]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Level__2D729C23]  DEFAULT ((1)) FOR [LevelRequired]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__DropR__2E66C05C]  DEFAULT ((1.00)) FOR [DropRate]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Stage__2F5AE495]  DEFAULT ((0)) FOR [StageRequired]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Color__304F08CE]  DEFAULT ((0)) FOR [Color]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArcanu__HP__31432D07]  DEFAULT ((0)) FOR [HP]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArcanu__MP__32375140]  DEFAULT ((0)) FOR [MP]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Armor__332B7579]  DEFAULT ((0)) FOR [ArmorClass]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Stren__341F99B2]  DEFAULT ((0)) FOR [Strength]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Intel__3513BDEB]  DEFAULT ((0)) FOR [Intelligence]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Wisdo__3607E224]  DEFAULT ((0)) FOR [Wisdom]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Const__36FC065D]  DEFAULT ((0)) FOR [Constitution]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Dexte__37F02A96]  DEFAULT ((0)) FOR [Dexterity]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Magic__38E44ECF]  DEFAULT ((0)) FOR [MagicResistance]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArcan__Hit__39D87308]  DEFAULT ((0)) FOR [Hit]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArcan__Dmg__3ACC9741]  DEFAULT ((0)) FOR [Dmg]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Regen__3BC0BB7A]  DEFAULT ((0)) FOR [Regen]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Spell__3CB4DFB3]  DEFAULT ((0)) FOR [SpellLinesModifier]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__IsPos__3DA903EC]  DEFAULT ((0)) FOR [IsPositiveSpellLines]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Spell__3E9D2825]  DEFAULT ((0)) FOR [SpellMinValue]
GO
ALTER TABLE [dbo].[WeaponArcanus] ADD  CONSTRAINT [DF__WeaponArc__Spell__3F914C5E]  DEFAULT ((0)) FOR [SpellMaxValue]
GO
