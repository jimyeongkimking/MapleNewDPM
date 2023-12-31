## Mechanic - Data
## Mechanic - VMatrix
MechanicCoreBase <- CoreBuilder(ActSkills=c("MultipleOption", "MicroMissileContainer", "MetalArmorFullburst", "MechCarrier", 
                                            CommonV("Pirate", "Resistance")), 
                                ActSkillsLv=c(25, 25, 25, 25, 25, 25, 25, 25, 25), 
                                UsefulSkills=c("SharpEyes", "CombatOrders"), 
                                SpecSet=get(DPMCalcOption$SpecSet), 
                                VPassiveList=MechanicVPassive, 
                                VPassivePrior=MechanicVPrior, 
                                SelfBind=F)

MechanicCore <- MatrixSet(PasSkills=MechanicCoreBase$PasSkills$Skills, 
                          PasLvs=MechanicCoreBase$PasSkills$Lv, 
                          PasMP=MechanicCoreBase$PasSkills$MP, 
                          ActSkills=MechanicCoreBase$ActSkills$Skills, 
                          ActLvs=MechanicCoreBase$ActSkills$Lv, 
                          ActMP=MechanicCoreBase$ActSkills$MP, 
                          UsefulSkills=MechanicCoreBase$UsefulSkills, 
                          UsefulLvs=20, 
                          UsefulMP=0, 
                          SpecSet=get(DPMCalcOption$SpecSet), 
                          SpecialCore=MechanicCoreBase$SpecialCoreUse)


## Mechanic - Basic Info
MechanicBase <- JobBase(ChrInfo=ChrInfo, 
                        MobInfo=get(DPMCalcOption$MobSet),
                        SpecSet=get(DPMCalcOption$SpecSet), 
                        Job="Mechanic",
                        CoreData=MechanicCore, 
                        BuffDurationNeeded=0, 
                        AbilList=FindJob(get(paste(DPMCalcOption$SpecSet, "Ability", sep="")), "Mechanic"), 
                        LinkList=FindJob(get(paste(DPMCalcOption$SpecSet, "Link", sep="")), "Mechanic"), 
                        MonsterLife=get(FindJob(MonsterLifePreSet, "Mechanic")[DPMCalcOption$MonsterLifeLevel][1, 1]), 
                        Weapon=WeaponUpgrade(1, DPMCalcOption$WeaponSF, 4, 0, 0, 0, 0, 3, 0, 0, "Gun", get(DPMCalcOption$SpecSet)$WeaponType)[, 1:16],
                        WeaponType=get(DPMCalcOption$SpecSet)$WeaponType, 
                        SubWeapon=SubWeapon[rownames(SubWeapon)=="Magnum", ], 
                        Emblem=Emblem[rownames(Emblem)=="Resistance", ], 
                        CoolReduceHat=as.logical(FindJob(get(paste(DPMCalcOption$SpecSet, "CoolReduceHat", sep="")), "Mechanic")))


## Mechanic - Passive
{option <- factor(c("MainStat", "SubStat1", "ATK"), levels=PSkill)
value <- c(10, 10, 17)
MechanicParts <- data.frame(option, value)
  
option <- factor(c("BDR"), levels=PSkill)
value <- c(10)
HiddenPiece <- data.frame(option, value)

option <- factor(c("ATK", "CRR", "CDMR"), levels=PSkill)
value <- c(20, 10, 5)
MechanicMastery <- data.frame(option, value)

option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(30, 30)
PhysicalTraining <- data.frame(option, value)

option <- factor(c("CRR"), levels=PSkill)
value <- c(30)
MetalArmorTank <- data.frame(option, value)

option <- factor(c("FDR", "CRR", "IGR"), levels=PSkill)
value <- c(25, 20, 30)
OverTuning <- data.frame(option, value)

option <- factor(c("Mastery", "ATK"), levels=PSkill)
value <- c(70 + ceiling(MechanicBase$PSkillLv/2), 55 + ceiling(MechanicBase$PSkillLv / 2))
MetalArmorExtreme <- data.frame(option, value)

option <- factor(c("BDR", "SummonDuration"), levels=PSkill)
value <- c((6 + ceiling(MechanicBase$PSkillLv/5)) * 3, 40 + MechanicBase$PSkillLv)
RobotMastery <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(10 + GetCoreLv(MechanicCore, "LoadedDice"))
LoadedDice <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(GetCoreLv(MechanicCore, "Blink"))
BlinkPassive <- data.frame(option, value)

option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(rep(GetCoreLv(MechanicCore, "RopeConnect"), 2))
RopeConnectPassive <- data.frame(option, value)}

MechanicPassive <- Passive(list(MechanicParts=MechanicParts, HiddenPiece=HiddenPiece, MechanicMastery=MechanicMastery, PhysicalTraining=PhysicalTraining, MetalArmorTank=MetalArmorTank, 
                                OverTuning=OverTuning, MetalArmorExtreme=MetalArmorExtreme, RobotMastery=RobotMastery, LoadedDice=LoadedDice, BlinkPassive=BlinkPassive, RopeConnectPassive=RopeConnectPassive))


## Mechanic - Buff
{option <- factor("ATKSpeed", levels=BSkill)
value <- c(2)
info <- c(180, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MechanicBooster <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=BSkill)
value <- c(15 + ceiling(MechanicBase$PSkillLv/2))
info <- c(80 * (100 + MechanicBase$MonsterLife$SummonedDuration + MechanicPassive$SummonDuration + MechanicBase$UnionChrs$SummonedDuration) / 100, NA, 630, F, NA, NA, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
SupportWaiver <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c((6 + ceiling(MechanicBase$PSkillLv/5)))
info <- c(30 * (100 + MechanicBase$MonsterLife$SummonedDuration + MechanicPassive$SummonDuration + MechanicBase$UnionChrs$SummonedDuration) / 100, 60, 0, F, T, T, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
RM1Buff <- rbind(data.frame(option, value), info)

option <- factor(levels=BSkill)
value <- c()
info <- c(300 * (100 + MechanicBase$MonsterLife$SummonedDuration + MechanicPassive$SummonDuration + MechanicBase$UnionChrs$SummonedDuration) / 100, 0, 1710, F, NA, NA, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
OpenGate <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c((6 + ceiling(MechanicBase$PSkillLv/5)))
info <- c(60 * (100 + MechanicPassive$SummonDuration) / 100 + 10, 160 * (100 - MechanicBase$UnionChrs$CoolReduceP - 25) / 100 - MechanicBase$CoolReduce, 630, F, F, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MagneticFieldBuff <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c((6 + ceiling(MechanicBase$PSkillLv/5)))
info <- c(70, 200, 0, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MechCarrierBuff <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c((6 + ceiling(MechanicBase$PSkillLv/5)))
info <- c(75 + 2 * GetCoreLv(MechanicCore, "MultipleOption"), 200, 0, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MultipleOptionBuff <- rbind(data.frame(option, value), info)

option <- factor("MainStat", levels=BSkill)
value <- c(floor((MechanicBase$ChrLv * 5 + 18) * (0.15 + 0.01 * ceiling(MechanicBase$SkillLv/2))))
info <- c(900 + 30 * MechanicBase$SkillLv, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleSoldier <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(20)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice5 <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(30)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice55 <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(40)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice555 <- rbind(data.frame(option, value), info)

option <- factor(c("BDR", "ATK"), levels=BSkill)
value <- c(20, 15)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice53 <- rbind(data.frame(option, value), info)

option <- factor(c("BDR", "ATK"), levels=BSkill)
value <- c(20, 25)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice533 <- rbind(data.frame(option, value), info)

option <- factor(c("BDR", "ATK"), levels=BSkill)
value <- c(30, 15)
info <- c(180, 1800, 1500, T, T, T, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
LuckyDice553 <- rbind(data.frame(option, value), info)

option <- factor("ATKSkill", levels=BSkill)
value <- c(1)
info <- c(10, 100, 900, F, F, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
BomberTime <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(5)
info <- c(120, 120, 0, F, F, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
WillofLiberty <- rbind(data.frame(option, value), info)

Useful <- UsefulSkills(MechanicCore)
UsefulSharpEyes <- Useful$UsefulSharpEyes
UsefulCombatOrders <- Useful$UsefulCombatOrders
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  UsefulAdvancedBless <- Useful$UsefulAdvancedBless
}

option <- factor("ATKSkill", levels=BSkill)
value <- c(1)
info <- c(8.67, 200, 0, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MetalArmorFullburstBuff <- rbind(data.frame(option, value), info)

option <- factor("ATKSkill", levels=BSkill)
value <- c(1)
info <- c(2, 200, 0, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MetalArmorFullburstExhaust <- rbind(data.frame(option, value), info)

option <- factor("ATK", levels=BSkill)
value <- c(floor((0.2 + 0.02 * GetCoreLv(MechanicCore, "OverDrive")) * ArcaneShade[rownames(ArcaneShade)=="Gun", 6]))
info <- c(30, 70 - floor(GetCoreLv(MechanicCore, "OverDrive")/5), 540, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
OverDrive <- rbind(data.frame(option, value), info)

option <- factor("ATK", levels=BSkill)
value <- c(-1 * floor(0.15 * ArcaneShade[rownames(ArcaneShade)=="Gun", 6]))
info <- c(Cooldown(70 - floor(GetCoreLv(MechanicCore, "OverDrive")/5), T, MechanicBase$UnionChrs$CoolReduceP, MechanicBase$CoolReduce) - 30 - General$General$Serverlag, 
          70 - floor(GetCoreLv(MechanicCore, "OverDrive")/5), 540, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
OverDriveExhaust <- rbind(data.frame(option, value), info)

option <- factor(c("MainStat", "BDR"), levels=BSkill)
value <- c(floor(((1 + 0.1 * GetCoreLv(MechanicCore, "MapleWarriors2")) * MapleSoldier[1, 2]) * MechanicBase$MainStatP), 5 + floor(GetCoreLv(MechanicCore, "MapleWarriors2")/2))
info <- c(60, 180, 630, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleWarriors2 <- rbind(data.frame(option, value), info)}

MechanicBuff <- list(MechanicBooster=MechanicBooster, SupportWaiver=SupportWaiver, RM1Buff=RM1Buff, OpenGate=OpenGate, MagneticFieldBuff=MagneticFieldBuff, MechCarrierBuff=MechCarrierBuff, 
                     MultipleOptionBuff=MultipleOptionBuff, MapleSoldier=MapleSoldier, 
                     LuckyDice5=LuckyDice5, LuckyDice55=LuckyDice55, LuckyDice555=LuckyDice555, LuckyDice53=LuckyDice53, LuckyDice533=LuckyDice533, LuckyDice553=LuckyDice553, 
                     BomberTime=BomberTime, WillofLiberty=WillofLiberty, UsefulSharpEyes=UsefulSharpEyes, UsefulCombatOrders=UsefulCombatOrders, 
                     MetalArmorFullburstBuff=MetalArmorFullburstBuff, MetalArmorFullburstExhaust=MetalArmorFullburstExhaust, OverDrive=OverDrive, OverDriveExhaust=OverDriveExhaust, MapleWarriors2=MapleWarriors2,
                     Restraint4=Restraint4, SoulContractLink=SoulContractLink)
## PetBuff : MechanicBooster, MapleSoldier, UsefulSharpEyes, UsefulCombatOrders, (UsefulAdvancedBless)
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  MechanicBuff[[length(MechanicBuff)+1]] <- UsefulAdvancedBless
  names(MechanicBuff)[[length(MechanicBuff)]] <- "UsefulAdvancedBless"
}
MechanicBuff <- Buff(MechanicBuff)
MechanicAllTimeBuff <- AllTimeBuff(MechanicBuff)


## Mechanic - Union & HyperStat & SoulWeapon
MechanicSpec <- JobSpec(JobBase=MechanicBase, 
                    Passive=MechanicPassive, 
                    AllTimeBuff=MechanicAllTimeBuff, 
                    MobInfo=get(DPMCalcOption$MobSet), 
                    SpecSet=get(DPMCalcOption$SpecSet), 
                    WeaponName="Gun", 
                    UnionStance=0)

MechanicUnionRemained <- MechanicSpec$UnionRemained
MechanicHyperStatBase <- MechanicSpec$HyperStatBase
MechanicCoolReduceType <- MechanicSpec$CoolReduceType
MechanicSpec <- MechanicSpec$Spec


## Mechanic - Spider In Mirror
SIM <- SIMData(GetCoreLv(MechanicCore, "SpiderInMirror"))
SpiderInMirror <- SIM$SpiderInMirror
SpiderInMirrorStart <- SIM$SpiderInMirrorStart
SpiderInMirror1 <- SIM$SpiderInMirror1
SpiderInMirror2 <- SIM$SpiderInMirror2
SpiderInMirror3 <- SIM$SpiderInMirror3
SpiderInMirror4 <- SIM$SpiderInMirror4
SpiderInMirror5 <- SIM$SpiderInMirror5
SpiderInMirrorWait <- SIM$SpiderInMirrorWait


## Mechanic - Attacks
{option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "MassiveFire")>=40, 20, 0), 10, 2 * GetCoreLv(MechanicCore, "MassiveFire"))
info <- c(285 + 6 * MechanicSpec$SkillLv, 7, 780, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MassiveFire <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "MassiveFire")>=40, 20, 0), 10, 2 * GetCoreLv(MechanicCore, "MassiveFire"))
info <- c(350 + 10 * MechanicSpec$SkillLv, 1, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MassiveFireExplosion <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "RM1")>=40, 20, 0), FDRCalc(c(2 * GetCoreLv(MechanicCore, "RM1"), 105 + 3 * MechanicSpec$PSkillLv)))
info <- c(1000 + 10 * MechanicSpec$SkillLv, 1, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
RM1Explosion <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "MagneticField")>=40, 20, 0), FDRCalc(c(2 * GetCoreLv(MechanicCore, "MagneticField"), 105 + 3 * MechanicSpec$PSkillLv)))
info <- c(550, 1, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MagneticFieldExplosion <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "HomingMissile")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "HomingMissile"))
info <- c(300, 9 + MechanicSpec$PSkillLv, 780, NA, NA, NA, NA, T)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HomingMissile <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "HomingMissile")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "HomingMissile"))
info <- c(300, 6, 780, NA, NA, NA, NA, T)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HomingMissileBomberTime <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "HomingMissile")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "HomingMissile"))
info <- c(500, 9 + MechanicSpec$PSkillLv, 780, NA, NA, NA, NA, T)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HomingMissileMetalArmor <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "HomingMissile")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "HomingMissile"))
info <- c(500, 6, 780, NA, NA, NA, NA, T)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HomingMissileMetalArmorBomber <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "HomingMissile")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "HomingMissile"))
info <- c(500, 7, 780, 600, NA, NA, NA, T)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HomingMissileMetalArmorAdd <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "DistortionField")>=40, 20, 0), 2 * GetCoreLv(MechanicCore, "DistortionField"))
info <- c(350, 2, 900, 250, 8, F, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
DistortionField <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=ASkill)
value <- c(105 + 3 * MechanicSpec$PSkillLv)
info <- c(350 + 10 * GetCoreLv(MechanicCore, "MultipleOption"), 8, 0, NA, 200, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MultipleOptionMissile <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(425 + 17 * GetCoreLv(MechanicCore, "MicroMissileContainer"), 5, 540, 30, 25, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MicroMissileContainer <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(0, 0, 1330, 0, 200, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MetalArmorFullburstPre <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(400 + 16 * GetCoreLv(MechanicCore, "MetalArmorFullburst"), 11, 8670, 180, 200, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MetalArmorFullburst <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(0, 0, 1800, 0, 200, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MetalArmorFullburstEnd <- rbind(data.frame(option, value), info)}

MechanicATK <- Attack(list(MassiveFire=MassiveFire, MassiveFireExplosion=MassiveFireExplosion, RM1Explosion=RM1Explosion, MagneticFieldExplosion=MagneticFieldExplosion, 
                           HomingMissile=HomingMissile, HomingMissileBomberTime=HomingMissileBomberTime, HomingMissileMetalArmor=HomingMissileMetalArmor, HomingMissileMetalArmorBomber=HomingMissileMetalArmorBomber, 
                           HomingMissileMetalArmorAdd=HomingMissileMetalArmorAdd, DistortionField=DistortionField, MultipleOptionMissile=MultipleOptionMissile, MicroMissileContainer=MicroMissileContainer, 
                           MetalArmorFullburstPre=MetalArmorFullburstPre, MetalArmorFullburst=MetalArmorFullburst, MetalArmorFullburstEnd=MetalArmorFullburstEnd,
                           SpiderInMirror=SpiderInMirror))


## Mechanic - Summoned
{option <- factor(levels=SSkill)
value <- c()
info <- c(215 + 8 * GetCoreLv(MechanicCore, "ResistanceLineInfantry"), 9, 360, 990, 10, 25, F, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
ResistanceLineInfantry <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=SSkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "RM7")>=40, 20, 0), FDRCalc(c(2 * GetCoreLv(MechanicCore, "RM7"), 105 + 3 * MechanicSpec$PSkillLv)))
info <- c(385 + 4 * MechanicSpec$PSkillLv, 1, 630, 1000, 60, NA, T, NA, NA, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
RM7 <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=SSkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "RM1")>=40, 20, 0), FDRCalc(c(2 * GetCoreLv(MechanicCore, "RM1"), 105 + 3 * MechanicSpec$PSkillLv)))
info <- c(500 + 5 * MechanicSpec$SkillLv, 3, 630, 3000, 30, 60, T, T, T, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
RM1 <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=SSkill)
value <- c(ifelse(GetCoreLv(MechanicCore, "MagneticField")>=40, 20, 0), FDRCalc(c(2 * GetCoreLv(MechanicCore, "MagneticField"), 105 + 3 * MechanicSpec$PSkillLv)))
info <- c(200, 1, 630, 1020, 60 * (100 + MechanicPassive$SummonDuration) / 100 + 10, 160 * (100 - MechanicSpec$CoolReduceP - 25) / 100 - MechanicSpec$CoolReduce, F, F, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
MagneticField <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=SSkill)
value <- c(105 + 3 * MechanicSpec$PSkillLv)
info <- c(200 + 8 * GetCoreLv(MechanicCore, "MultipleOption"), 6, 780, 1500, 75 + 2 * GetCoreLv(MechanicCore, "MultipleOption"), 200, F, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
MultipleOptionGetling <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=SSkill)
value <- c(105 + 3 * MechanicSpec$PSkillLv)
info <- c(250 + 10 * GetCoreLv(MechanicCore, "MechCarrier"), 4, 720, 4000, 70, 200, F, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
MechCarrier <- rbind(data.frame(option, value), info)}

MechanicSummoned <- Summoned(list(ResistanceLineInfantry=ResistanceLineInfantry, RM7=RM7, RM1=RM1, MagneticField=MagneticField, MultipleOptionGetling=MultipleOptionGetling, MechCarrier=MechCarrier,
                                  SpiderInMirrorStart=SpiderInMirrorStart, 
                                  SpiderInMirror1=SpiderInMirror1, SpiderInMirror2=SpiderInMirror2, SpiderInMirror3=SpiderInMirror3, 
                                  SpiderInMirror4=SpiderInMirror4, SpiderInMirror5=SpiderInMirror5, SpiderInMirrorWait=SpiderInMirrorWait))


## Mechanic - DealCycle & Deal Calculation
ATKFinal <- data.frame(MechanicATK)
ATKFinal$Delay[c(-11, -12, -13)] <- Delay(ATKFinal$Delay, MechanicSpec$ATKSpeed)[c(-11, -12, -13)]
ATKFinal$CoolTime <- Cooldown(ATKFinal$CoolTime, ATKFinal$CoolReduceAvailable, MechanicSpec$CoolReduceP, MechanicSpec$CoolReduce)

BuffFinal <- data.frame(MechanicBuff)
BuffFinal$CoolTime <- Cooldown(BuffFinal$CoolTime, BuffFinal$CoolReduceAvailable, MechanicSpec$CoolReduceP, MechanicSpec$CoolReduce)
BuffFinal$Duration <- BuffFinal$Duration + BuffFinal$Duration * ifelse(BuffFinal$BuffDurationAvailable==T, MechanicSpec$BuffDuration / 100, 0) +
  ifelse(BuffFinal$ServerLag==T, General$General$Serverlag, 0)

SummonedFinal <- data.frame(MechanicSummoned)
SummonedFinal$CoolTime <- Cooldown(SummonedFinal$CoolTime, SummonedFinal$CoolReduceAvailable, MechanicSpec$CoolReduceP, MechanicSpec$CoolReduce)
SummonedFinal$Duration <- SummonedFinal$Duration + ifelse(SummonedFinal$SummonedDurationAvailable==T, SummonedFinal$Duration * MechanicSpec$SummonedDuration / 100, 0)
SummonedFinal$Duration[5] <- MultipleOptionTime(SummonedFinal$Duration[5])

DealCycle <- c("Skills", "Time", rownames(MechanicBuff))
MechanicDealCycle <- t(rep(0, length(DealCycle)))
colnames(MechanicDealCycle) <- DealCycle

MechanicCycle <- function(PreDealCycle, ATKFinal, BuffFinal, SummonedFinal, Spec, 
                          Period=c(190, 200), CycleTime=c(380, 400)) {
  BuffSummonedPrior <- c("MechanicBooster", "MapleSoldier", "SupportWaiver", "OpenGate", "LuckyDice5", "UsefulSharpEyes", "UsefulCombatOrders", "UsefulAdvancedBless", "WillofLiberty", 
                         "RM7", "RM1Buff", "MagneticFieldBuff", "MultipleOptionBuff", "OverDrive", "MapleWarriors2", "MechCarrierBuff", 
                         "SoulContractLink", "BomberTime", "Restraint4")
  Times190 <- c(0, 0, 2, 0.5, 1, 0, 0, 0, 0, 
                2, 3, 1.5, 1, 3, 1, 1, 
                2, 1, 1)
  Times200 <- c(0, 0, 2, 0.5, 1, 0, 0, 0, 0, 
                2, 3.5, 1.5, 1, 3, 1, 1, 
                2, 2, 1)
  if(nrow(BuffFinal[rownames(BuffFinal)=="UsefulAdvancedBless", ]) == 0) {
    Times190 <- Times190[BuffSummonedPrior!="UsefulAdvancedBless"]
    Times200 <- Times200[BuffSummonedPrior!="UsefulAdvancedBless"]
    BuffSummonedPrior <- BuffSummonedPrior[BuffSummonedPrior!="UsefulAdvancedBless"]
  }
  
  SubTime <- rep(Period - ifelse(Period==190, Spec$CoolReduce, 0), length(BuffSummonedPrior))
  TotalTime <- CycleTime - ifelse(Period==190, Spec$CoolReduce * (CycleTime/Period), 0)
  for(i in 1:length(BuffSummonedPrior)) {
    if(Period==190) {
      SubTime[i] <- SubTime[i] / ifelse(Times190[i]==0, Inf, Times190[i])
    } else if(Period==200) {
      SubTime[i] <- SubTime[i] / ifelse(Times200[i]==0, Inf, Times200[i])
    }
  }
  
  SubTimeUniques <- unique(SubTime)
  SubTimeUniques <- SubTimeUniques[SubTimeUniques > 0]
  TimeTypes <- c()
  for(i in 1:length(SubTimeUniques)) {
    Time <- 0 ; r <- 1
    while(Time < TotalTime) {
      Time <- SubTimeUniques[i] * r
      r <- r + 1
      TimeTypes <- c(TimeTypes, Time)
    }
  }
  TimeTypes <- TimeTypes[TimeTypes < TotalTime]
  TimeTypes <- unique(TimeTypes)
  TimeTypes <- TimeTypes[order(TimeTypes)]
  
  Buffs <- data.frame(Buff=BuffSummonedPrior, SubTime=SubTime, stringsAsFactors=F)
  Buffs <- subset(Buffs, Buffs$SubTime > 0)
  
  BuffList <- list()
  BuffList[[1]] <- BuffSummonedPrior
  for(i in 1:length(TimeTypes)) {
    s <- c()
    for(j in 1:nrow(Buffs)) {
      if(round(TimeTypes[i] / Buffs[j, 2]) == TimeTypes[i] / Buffs[j, 2]) {
        s <- c(s, Buffs[j, 1])
      }
    }
    BuffList[[i+1]] <- s
  }
  
  DelayDataB <- data.frame(Name=rownames(BuffFinal), Delay=BuffFinal$Delay)
  DelayDataS <- data.frame(Name=rownames(SummonedFinal), Delay=SummonedFinal$Delay)
  DelayData <- rbind(DelayDataB, DelayDataS)
  
  BuffDelays <- list()
  for(i in 1:length(BuffList)) {
    t <- c()
    for(j in 1:length(BuffList[[i]])) {
      for(k in 1:nrow(DelayData)) {
        if(DelayData$Name[k]==BuffList[[i]][j]) {
          t <- c(t, k)
        }
      }
    }
    BuffDelays[[i]] <- DelayData$Delay[t]
  } 
  
  TotalTime <- TotalTime * 1000
  DealCycle <- PreDealCycle
  for(i in 1:length(BuffList[[1]])) {
    if(sum(rownames(BuffFinal)==BuffList[[1]][i]) > 0) {
      DealCycle <- DCBuff(DealCycle, BuffList[[1]][i], BuffFinal)
      if(BuffList[[1]][i]=="MultipleOptionBuff") {
        DealCycle <- DCSummoned(DealCycle, "MultipleOptionGetling", SummonedFinal)
        DealCycle <- DCATK(DealCycle, "SpiderInMirror", ATKFinal)
      } else if(BuffList[[1]][i]=="RM1Buff") {
        DealCycle <- DCSummoned(DealCycle, "RM1", SummonedFinal)
      } else if(BuffList[[1]][i]=="MechCarrierBuff") {
        DealCycle <- DCSummoned(DealCycle, "MechCarrier", SummonedFinal)
      } else if(BuffList[[1]][i]=="MagneticFieldBuff") {
        DealCycle <- DCSummoned(DealCycle, "MagneticField", SummonedFinal)
      }
    } else {
      DealCycle <- DCSummoned(DealCycle, BuffList[[1]][i], SummonedFinal)
    }
  }
  
  SubTimeList <- data.frame(Skills=BuffSummonedPrior, SubTime=SubTime, stringsAsFactors=F)
  NoSubTime <- subset(SubTimeList, SubTimeList$SubTime==0)$Skills
  NoSubTimeBuff <- c() ; NoSubTimeSummoned <- c()
  for(i in 1:length(NoSubTime)) {
    NoSubTimeBuff <- c(NoSubTimeBuff, NoSubTime[i])
  }
  ColNums <- c()
  for(i in 1:length(NoSubTimeBuff)) {
    for(j in 1:length(colnames(DealCycle))) {
      if(NoSubTimeBuff[i]==colnames(DealCycle)[j]) {
        ColNums[i] <- j
      }
    }
  }
  MMCool <- subset(ATKFinal, rownames(ATKFinal)=="MicroMissileContainer")$CoolTime * 1000
  DTCool <- subset(ATKFinal, rownames(ATKFinal)=="DistortionField")$CoolTime * 1000
  MMRemain <- 0 ; DTRemain <- 0
  MMCount <- 0 ; MMMax <- ceiling(TotalTime / MMCool - 1)
  BuffList[[length(BuffList)+1]] <- BuffList[[1]]
  BuffDelays[[length(BuffDelays)+1]] <- BuffDelays[[1]]
  TimeTypes <- c(0, TimeTypes, TotalTime/1000)
  
  for(k in 2:length(BuffList)) {
    CycleBuffList <- data.frame(Skills=BuffList[[k]], Delay=BuffDelays[[k]])
    BuffEndTime <- c()
    for(i in 1:length(BuffList[[k]])) {
      a <- subset(DealCycle, BuffList[[k]][i]==DealCycle$Skills)
      a <- rbind(a, subset(DealCycle, paste(BuffList[[k]][i], "Summoned", sep="")==DealCycle$Skills))
      for(j in 1:nrow(CycleBuffList)) {
        if(CycleBuffList$Skills[j]==BuffList[[k]][i]) {
          Idx <- j
          break
        }
      }
      BuffEndTime[i] <- max(a$Time) + 
        min(subset(SubTimeList, SubTimeList$Skills==BuffList[[k]][i])$SubTime * 1000, subset(BuffFinal, rownames(BuffFinal)==BuffList[[k]][i])$CoolTime * 1000, 
            subset(SummonedFinal, rownames(SummonedFinal)==BuffList[[k]][i])$CoolTime * 1000) + 
        sum(CycleBuffList$Delay[Idx:nrow(CycleBuffList)])
    }
    BuffEndTime <- max(BuffEndTime)
    BuffEndTime <- max(BuffEndTime, TimeTypes[k] * 1000)
    BuffStartTime <- BuffEndTime - sum(CycleBuffList$Delay)
    while(DealCycle$Time[nrow(DealCycle)] + DealCycle$Time[1] < BuffStartTime) {
      for(i in 1:length(ColNums)) {
        if(DealCycle[nrow(DealCycle), ColNums[i]] - DealCycle$Time[1] < 3000) {
          DealCycle <- DCBuff(DealCycle, colnames(DealCycle)[ColNums[i]], BuffFinal)
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        }
      }
      ## Micro Missile Container + Resistance Line Infantry
      if(MMRemain == 0 & MMCount < MMMax) {
        DealCycle <- DCATK(DealCycle, "MicroMissileContainer", ATKFinal)
        MMRemain <- MMCool - DealCycle$Time[1]
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        DealCycle <- DCSummoned(DealCycle, "ResistanceLineInfantry", SummonedFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        MMCount <- MMCount + 1
      } 
      ## Distortion Field
      else if(DTRemain == 0) {
        DealCycle <- DCATK(DealCycle, "DistortionField", ATKFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- DTCool - DealCycle$Time[1]
      } 
      ## Metal Armor Fullburst
      else if(DealCycle$Restraint4[nrow(DealCycle)] >= 10000) {
        DealCycle <- DCATK(DealCycle, c("MetalArmorFullburstPre"), ATKFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        DealCycle <- DCBuff(DealCycle, c("MetalArmorFullburstBuff"), BuffFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, c("MetalArmorFullburst"), ATKFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        DealCycle <- DCBuff(DealCycle, c("MetalArmorFullburstExhaust"), BuffFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, c("MetalArmorFullburstEnd"), ATKFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
      }
      ## Massive Fire
      else {
        DealCycle <- DCATK(DealCycle, c("MassiveFire"), ATKFinal)
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        DTRemain <- max(0, DTRemain - DealCycle$Time[1])
      }
    }
    
    if(k != length(BuffList)) {
      for(i in 1:length(BuffList[[k]])) {
        if(sum(rownames(BuffFinal)==BuffList[[k]][i]) > 0) {
          DealCycle <- DCBuff(DealCycle, BuffList[[k]][i], BuffFinal)
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          DTRemain <- max(0, DTRemain - DealCycle$Time[1])
          if(BuffList[[k]][i]=="MultipleOptionBuff") {
            DealCycle <- DCSummoned(DealCycle, "MultipleOptionGetling", SummonedFinal)
            MMRemain <- max(0, MMRemain - DealCycle$Time[1])
            DTRemain <- max(0, DTRemain - DealCycle$Time[1])
          } else if(BuffList[[k]][i]=="RM1Buff") {
            DealCycle <- DCSummoned(DealCycle, "RM1", SummonedFinal)
            MMRemain <- max(0, MMRemain - DealCycle$Time[1])
            DTRemain <- max(0, DTRemain - DealCycle$Time[1])
          } else if(BuffList[[k]][i]=="MechCarrierBuff") {
            DealCycle <- DCSummoned(DealCycle, "MechCarrier", SummonedFinal)
            MMRemain <- max(0, MMRemain - DealCycle$Time[1])
            DTRemain <- max(0, DTRemain - DealCycle$Time[1])
          } else if(BuffList[[k]][i]=="MagneticFieldBuff") {
            DealCycle <- DCSummoned(DealCycle, "MagneticField", SummonedFinal)
            MMRemain <- max(0, MMRemain - DealCycle$Time[1])
            DTRemain <- max(0, DTRemain - DealCycle$Time[1])
          }
        } else {
          DealCycle <- DCSummoned(DealCycle, BuffList[[k]][i], SummonedFinal)
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          DTRemain <- max(0, DTRemain - DealCycle$Time[1])
        }
      }
    }
  }
  return(DealCycle)
}

MechanicDealCycle <- MechanicCycle(PreDealCycle=MechanicDealCycle, 
                           ATKFinal=ATKFinal,
                           BuffFinal=BuffFinal, 
                           SummonedFinal=SummonedFinal, 
                           Spec=MechanicSpec,
                           Period=190, 
                           CycleTime=380)
MechanicDealCycle <- DealCycleFinal(MechanicDealCycle)
MechanicDealCycle <- OverDriveExhaustBuff(MechanicDealCycle, BuffFinal[rownames(BuffFinal)=="OverDrive", ]$Duration, BuffFinal[rownames(BuffFinal)=="OverDrive", ]$CoolTime)
MechanicDealCycle <- DCSummonedATKs(MechanicDealCycle, c("RM7"), SummonedFinal)
MechanicDealCycle <- RM1MFCycle(MechanicDealCycle, SummonedFinal[rownames(SummonedFinal)=="RM1", ]$Duration, SummonedFinal[rownames(SummonedFinal)=="RM1", ]$CoolTime, 
                                SummonedFinal[rownames(SummonedFinal)=="MagneticField", ]$Duration, SummonedFinal[rownames(SummonedFinal)=="MagneticField", ]$CoolTime, SummonedFinal)
MechanicDealCycle <- DCSummonedATKs(MechanicDealCycle, c("ResistanceLineInfantry"), SummonedFinal)
MechanicDealCycle <- RepATKCycle(MechanicDealCycle, c("MetalArmorFullburst"), 49, 0, ATKFinal)
MechanicDealCycle <- RepATKCycle(MechanicDealCycle, c("MicroMissileContainer"), 30 + floor(GetCoreLv(MechanicCore, "MicroMissileContainer")/3), 1440, ATKFinal)
MechanicDealCycle <- RepATKCycle(MechanicDealCycle, c("DistortionField"), 15, 0, ATKFinal)
MechanicDealCycle <- MultipleOptionCycle(MechanicDealCycle, SummonedFinal)
MechanicDealCycle <- MechCarrierCycle(MechanicDealCycle, SummonedFinal)
MechanicDealCycle <- DCSpiderInMirror(MechanicDealCycle, SummonedFinal)
MechanicDealCycle <- MechanicAddATKCycle(MechanicDealCycle, ATKFinal)
MechanicDealCycleReduction <- DealCycleReduction(MechanicDealCycle)

MechanicDealCycle5 <- MechanicDealCycle
MechanicDealCycle55 <- MechanicDealCycle
MechanicDealCycle555 <- MechanicDealCycle
MechanicDealCycle53 <- MechanicDealCycle
MechanicDealCycle533 <- MechanicDealCycle
MechanicDealCycle553 <- MechanicDealCycle

MechanicDealCycle55$LuckyDice55 <- MechanicDealCycle55$LuckyDice5
MechanicDealCycle55$LuckyDice5 <- 0

MechanicDealCycle555$LuckyDice555 <- MechanicDealCycle555$LuckyDice5
MechanicDealCycle555$LuckyDice5 <- 0

MechanicDealCycle53$LuckyDice53 <- MechanicDealCycle53$LuckyDice5
MechanicDealCycle53$LuckyDice5 <- 0

MechanicDealCycle533$LuckyDice533 <- MechanicDealCycle533$LuckyDice5
MechanicDealCycle533$LuckyDice5 <- 0

MechanicDealCycle553$LuckyDice533 <- MechanicDealCycle553$LuckyDice5
MechanicDealCycle553$LuckyDice5 <- 0

MechanicDealCycleProbs <- c(0.592680, 0.208894, 0.009475, 
                            0.135320, 0.017340, 0.036291)

for(i in 1:length(PotentialOpt)) {
  if(names(PotentialOpt)[i]==DPMCalcOption$SpecSet) {
    Idx1 <- i
  }
}
for(i in 1:nrow(PotentialOpt[[Idx1]])) {
  if(rownames(PotentialOpt[[Idx1]])[i]=="Mechanic") {
    Idx2 <- i
  }
}
if(DPMCalcOption$Optimization==T) {
  MechanicSpecOpt1 <- Optimization1(MechanicDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, MechanicSpec, MechanicUnionRemained)
  PotentialOpt[[Idx1]][Idx2, ] <- MechanicSpecOpt1[1, 1:3]
} else {
  MechanicSpecOpt1 <- PotentialOpt[[Idx1]][Idx2, ]
}
MechanicSpecOpt <- OptDataAdd(MechanicSpec, MechanicSpecOpt1, "Potential", MechanicBase$CRROver, DemonAvenger=F)

if(DPMCalcOption$Optimization==T) {
  MechanicSpecOpt2 <- Optimization2(MechanicDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt, MechanicHyperStatBase, MechanicBase$ChrLv, MechanicBase$CRROver)
  HyperStatOpt[[Idx1]][Idx2, c(1, 3:10)] <- MechanicSpecOpt2[1, ]
} else {
  MechanicSpecOpt2 <- HyperStatOpt[[Idx1]][Idx2, ]
}
MechanicSpecOpt <- OptDataAdd(MechanicSpecOpt, MechanicSpecOpt2, "HyperStat", MechanicBase$CRROver, DemonAvenger=F)

MechanicFinalDPM <- ResetDealCalc(list(MechanicDealCycle5, MechanicDealCycle55, MechanicDealCycle555, 
                                       MechanicDealCycle53, MechanicDealCycle533, MechanicDealCycle553), 
                                  ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt, rep(max(MechanicDealCycle$Time), 6), MechanicDealCycleProbs)
MechanicFinalDPMwithMax <- ResetDealCalcWithMaxDMR(list(MechanicDealCycle5, MechanicDealCycle55, MechanicDealCycle555, 
                                                        MechanicDealCycle53, MechanicDealCycle533, MechanicDealCycle553), 
                                                   ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt, rep(max(MechanicDealCycle$Time), 6), MechanicDealCycleProbs)

set(get(DPMCalcOption$DataName), as.integer(1), "Mechanic", sum(na.omit(MechanicFinalDPMwithMax)) / (max(MechanicDealCycle$Time) / 60000))
set(get(DPMCalcOption$DataName), as.integer(2), "Mechanic", sum(na.omit(MechanicFinalDPM)) / (max(MechanicDealCycle$Time) / 60000) - sum(na.omit(MechanicFinalDPMwithMax)) / (max(MechanicDealCycle$Time) / 60000))

MechanicDeal1 <- DealCalcWithMaxDMR(MechanicDealCycle5, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDeal2 <- DealCalcWithMaxDMR(MechanicDealCycle55, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDeal3 <- DealCalcWithMaxDMR(MechanicDealCycle555, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDeal4 <- DealCalcWithMaxDMR(MechanicDealCycle53, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDeal5 <- DealCalcWithMaxDMR(MechanicDealCycle533, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDeal6 <- DealCalcWithMaxDMR(MechanicDealCycle553, ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt)
MechanicDealDatas <- list(MechanicDeal1, MechanicDeal2, MechanicDeal3, MechanicDeal4, MechanicDeal5, MechanicDeal6)
MechanicDealRatio <- ResetDealRatio(list(MechanicDealCycle5, MechanicDealCycle55, MechanicDealCycle555, 
                                         MechanicDealCycle53, MechanicDealCycle533, MechanicDealCycle553), 
                                    MechanicDealDatas, rep(max(MechanicDealCycle$Time), 6), MechanicDealCycleProbs)

MechanicDealData <- data.frame(MechanicDealCycle$Skills, MechanicDealCycle$Time, MechanicDealCycle$Restraint4, MechanicDeal1)
colnames(MechanicDealData) <- c("Skills", "Time", "R4", "Deal")
set(get(DPMCalcOption$DataName), as.integer(3), "Mechanic", Deal_RR(MechanicDealData))
set(get(DPMCalcOption$DataName), as.integer(4), "Mechanic", Deal_40s(MechanicDealData))

MechanicSpecMean <- ResetSpecMean("Mechanic", 
                                  list(MechanicDealCycle5, MechanicDealCycle55, MechanicDealCycle555, 
                                       MechanicDealCycle53, MechanicDealCycle533, MechanicDealCycle553), 
                                  list(MechanicDeal1, MechanicDeal2, MechanicDeal3, 
                                       MechanicDeal4, MechanicDeal5, MechanicDeal6), 
                                  ATKFinal, BuffFinal, SummonedFinal, MechanicSpecOpt, rep(max(MechanicDealCycle$Time), 6), MechanicDealCycleProbs)