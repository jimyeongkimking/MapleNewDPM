## Bowmaster - Data
## Bowmaster - VMatrix
BowmasterCoreBase <- CoreBuilder(ActSkills=c("ArrowRain", "AfterimageArrow", "QuiverFullBurst", "SilhouetteMirage", 
                                             CommonV("Bowman", "Adventure")), 
                                 ActSkillsLv=c(25, 25, 25, 25, 25, 25, 25, 25, 25), 
                                 UsefulSkills=c("CombatOrders"), 
                                 SpecSet=get(DPMCalcOption$SpecSet), 
                                 VPassiveList=BowmasterVPassive, 
                                 VPassivePrior=BowmasterVPrior, 
                                 SelfBind=F)

BowmasterCore <- MatrixSet(PasSkills=BowmasterCoreBase$PasSkills$Skills, 
                           PasLvs=BowmasterCoreBase$PasSkills$Lv, 
                           PasMP=BowmasterCoreBase$PasSkills$MP, 
                           ActSkills=BowmasterCoreBase$ActSkills$Skills, 
                           ActLvs=BowmasterCoreBase$ActSkills$Lv, 
                           ActMP=BowmasterCoreBase$ActSkills$MP, 
                           UsefulSkills=BowmasterCoreBase$UsefulSkills, 
                           UsefulLvs=20, 
                           UsefulMP=0, 
                           SpecSet=get(DPMCalcOption$SpecSet), 
                           SpecialCore=BowmasterCoreBase$SpecialCoreUse)


## Bowmaster - Basic Info
BowmasterBase <- JobBase(ChrInfo=ChrInfo, 
                         MobInfo=get(DPMCalcOption$MobSet),
                         SpecSet=get(DPMCalcOption$SpecSet), 
                         Job="Bowmaster",
                         CoreData=BowmasterCore, 
                         BuffDurationNeeded=0, 
                         AbilList=FindJob(get(paste(DPMCalcOption$SpecSet, "Ability", sep="")), "Bowmaster"), 
                         LinkList=FindJob(get(paste(DPMCalcOption$SpecSet, "Link", sep="")), "Bowmaster"), 
                         MonsterLife=get(FindJob(MonsterLifePreSet, "Bowmaster")[DPMCalcOption$MonsterLifeLevel][1, 1]), 
                         Weapon=WeaponUpgrade(1, DPMCalcOption$WeaponSF, 4, 0, 0, 0, 0, 3, 0, 0, "Bow", get(DPMCalcOption$SpecSet)$WeaponType)[, 1:16],
                         WeaponType=get(DPMCalcOption$SpecSet)$WeaponType, 
                         SubWeapon=SubWeapon[rownames(SubWeapon)=="ArrowFeather", ], 
                         Emblem=Emblem[rownames(Emblem)=="MapleLeaf", ], 
                         CoolReduceHat=as.logical(FindJob(get(paste(DPMCalcOption$SpecSet, "CoolReduceHat", sep="")), "Bowmaster")))

## Bowmaster - Passive
{option <- factor("ATK", levels=PSkill)
value <- c(9)
TitaniumArrow <- data.frame(option, value)

option <- factor("ATKSpeed", levels=PSkill)
value <- c(1)
ArcherMastery <- data.frame(option, value)

option <- factor(c("CRR"), levels=PSkill)
value <- c(40)
CriticalShot <- data.frame(option, value)

option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(30, 30)
PhysicalTraining <- data.frame(option, value)

option <- factor(c("ATKSpeed", "MainStat"), levels=PSkill)
value <- c(2, 20)
BowAcceleration <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(30)
SoulArrow <- data.frame(option, value)

option <- factor(c("ATK", "FDR"), levels=PSkill)
value <- c(40, 30)
ExtremeArchery <- data.frame(option, value)

option <- factor(c("IGR", "ATKP"), levels=PSkill)
value <- c(25, 25)
MarksmanShip <- data.frame(option, value)

option <- factor(c("Mastery", "ATK", "CDMR"), levels=PSkill)
value <- c(70 + ceiling(BowmasterBase$PSkillLv / 2), 60 + 2 * BowmasterBase$PSkillLv, 16)
BowExpert <- data.frame(option, value)

option <- factor(c("MainStat"), levels=PSkill)
value <- c(80 + 2 * BowmasterBase$PSkillLv)
IllusionStep <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(20 + ceiling(BowmasterBase$PSkillLv / 2))
AdvancedFinalAttack <- data.frame(option, value)

option <- factor(c("FDR"), levels=PSkill)
value <- c(6)
AdvancedQuiverPassive <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(GetCoreLv(BowmasterCore, "Blink"))
BlinkPassive <- data.frame(option, value)

option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(rep(GetCoreLv(BowmasterCore, "RopeConnect"), 2))
RopeConnectPassive <- data.frame(option, value)}

BowmasterPassive <- Passive(list(TitaniumArrow, ArcherMastery, CriticalShot, PhysicalTraining, BowAcceleration, SoulArrow, ExtremeArchery, MarksmanShip, BowExpert, 
                                 IllusionStep, AdvancedFinalAttack, AdvancedQuiverPassive, BlinkPassive, RopeConnectPassive))


## Bowmaster - Buff
{option <- factor("MainStat", levels=BSkill)
value <- c(floor((BowmasterBase$ChrLv * 5 + 18) * (0.15 + 0.01 * ceiling(BowmasterBase$SkillLv/2))))
info <- c(900 + 30 * BowmasterBase$SkillLv, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleSoldier <- rbind(data.frame(option, value), info)

option <- factor(c("CRR", "CDMR"), levels=BSkill)
value <- c(20 + ceiling(BowmasterBase$SkillLv/2), 15 + ceiling(BowmasterBase$SkillLv/2))
info <- c(300 + 3 * BowmasterBase$SkillLv, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
SharpEyes <- rbind(data.frame(option, value), info)

option <- factor(c("BDR", "ATK"), levels=BSkill)
value <- c(20, 50)
info <- c(30, 90, 540, F, F, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
Preperation <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(5)
info <- c(120, 120, 0, F, F, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
EpicAdventure <- rbind(data.frame(option, value), info)

Useful <- UsefulSkills(BowmasterCore)
UsefulCombatOrders <- Useful$UsefulCombatOrders
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  UsefulAdvancedBless <- Useful$UsefulAdvancedBless
}

option <- factor("BDR", levels=BSkill)
value <- c(15 + floor(GetCoreLv(BowmasterCore, "ArrowRain")/2))
info <- c(40 + GetCoreLv(BowmasterCore, "ArrowRain"), 120, 510, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
ArrowRainBuff <- rbind(data.frame(option, value), info)

option <- factor(levels=BSkill)
value <- c()
info <- c(30, 120, 720, F, T, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
AfterimageArrowBuff <- rbind(data.frame(option, value), info)

option <- factor("ATKP", levels=BSkill)
value <- c(5 + floor(GetCoreLv(BowmasterCore, "QuiverFullBurst")/2))
info <- c(40, 120, 630, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
QuiverFullBurst <- rbind(data.frame(option, value), info)

option <- factor(levels=BSkill)
value <- c()
info <- c(30, 120, 780, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
CriticalReinforce <- rbind(data.frame(option, value), info) ## Update Needed

option <- factor(c("MainStat", "BDR"), levels=BSkill)
value <- c(floor(((1 + 0.1 * GetCoreLv(BowmasterCore, "MapleWarriors2")) * MapleSoldier[1, 2]) * BowmasterBase$MainStatP), 5 + floor(GetCoreLv(BowmasterCore, "MapleWarriors2")/2))
info <- c(60, 180, 630, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleWarriors2 <- rbind(data.frame(option, value), info)

option <- factor(c("FDR", "IGR"), levels=BSkill)
value <- c(min(400, MobDefault$Basic$Guard * (100 + 5 * BowmasterBase$PSkillLv) / 100), 50 + 2 * BowmasterBase$PSkillLv)
info <- c(1, 9, 0, F, F, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
ArmorPiercingDummy <- rbind(data.frame(option, value), info)

option <- factor("BDR", levels=BSkill)
value <- c(35)
info <- c(5, 6, 0, F, F, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MotalBlowDummy <- rbind(data.frame(option, value), info)}

BowmasterBuff <- list(MapleSoldier=MapleSoldier, SharpEyes=SharpEyes, 
                      Preperation=Preperation, EpicAdventure=EpicAdventure, UsefulCombatOrders=UsefulCombatOrders, ArrowRainBuff=ArrowRainBuff, AfterimageArrowBuff=AfterimageArrowBuff, 
                      QuiverFullBurst=QuiverFullBurst, CriticalReinforce=CriticalReinforce, MapleWarriors2=MapleWarriors2, ArmorPiercingDummy=ArmorPiercingDummy, 
                      MotalBlowDummy=MotalBlowDummy, Restraint4=Restraint4, SoulContractLink=SoulContractLink)
## Petbuff : UsefulCombatOrders(1500ms), SharpEyes(900ms), MapleSoldier(0ms), (UsefulAdvancedBless)
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  BowmasterBuff[[length(BowmasterBuff)+1]] <- UsefulAdvancedBless
  names(BowmasterBuff)[[length(BowmasterBuff)]] <- "UsefulAdvancedBless"
}
BowmasterBuff <- Buff(BowmasterBuff)
BowmasterAllTimeBuff <- AllTimeBuff(BowmasterBuff)


## Bowmaster - Union & HyperStat & SoulWeapon
BowmasterSpec <- JobSpec(JobBase=BowmasterBase, 
                        Passive=BowmasterPassive, 
                        AllTimeBuff=BowmasterAllTimeBuff, 
                        MobInfo=get(DPMCalcOption$MobSet), 
                        SpecSet=get(DPMCalcOption$SpecSet), 
                        WeaponName="Bow", 
                        UnionStance=0)

BowmasterUnionRemained <- BowmasterSpec$UnionRemained
BowmasterHyperStatBase <- BowmasterSpec$HyperStatBase
BowmasterCoolReduceType <- BowmasterSpec$CoolReduceType
BowmasterSpec <- BowmasterSpec$Spec


## Bowmaster - Critical Reinforce(RE)
{option <- factor("CDMR", levels=BSkill)
value <- c(BowmasterSpec$CRR * (0.2 + 0.01 * GetCoreLv(BowmasterCore, "CriticalReinforce")))
info <- c(30, 120, 780, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
CriticalReinforce <- rbind(data.frame(option, value), info)}
BowmasterBuff <- list(MapleSoldier=MapleSoldier, SharpEyes=SharpEyes, 
                      Preperation=Preperation, EpicAdventure=EpicAdventure, UsefulCombatOrders=UsefulCombatOrders, ArrowRainBuff=ArrowRainBuff, AfterimageArrowBuff=AfterimageArrowBuff, 
                      QuiverFullBurst=QuiverFullBurst, CriticalReinforce=CriticalReinforce, MapleWarriors2=MapleWarriors2, ArmorPiercingDummy=ArmorPiercingDummy, 
                      MotalBlowDummy=MotalBlowDummy, Restraint4=Restraint4, SoulContractLink=SoulContractLink)
## Petbuff : UsefulCombatOrders(1500ms), SharpEyes(900ms), SoulArrow(810ms), MapleSoldier(0ms), (UsefulAdvancedBless)
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  BowmasterBuff[[length(BowmasterBuff)+1]] <- UsefulAdvancedBless
  names(BowmasterBuff)[[length(BowmasterBuff)]] <- "UsefulAdvancedBless"
}
BowmasterBuff <- Buff(BowmasterBuff)
BowmasterAllTimeBuff <- AllTimeBuff(BowmasterBuff)


## Bowmaster - Spider In Mirror
SIM <- SIMData(GetCoreLv(BowmasterCore, "SpiderInMirror"))
SpiderInMirror <- SIM$SpiderInMirror
SpiderInMirrorStart <- SIM$SpiderInMirrorStart
SpiderInMirror1 <- SIM$SpiderInMirror1
SpiderInMirror2 <- SIM$SpiderInMirror2
SpiderInMirror3 <- SIM$SpiderInMirror3
SpiderInMirror4 <- SIM$SpiderInMirror4
SpiderInMirror5 <- SIM$SpiderInMirror5
SpiderInMirrorWait <- SIM$SpiderInMirrorWait


## Bowmaster - Attacks
{option <- factor(c("BDR", "IGR", "FDR"), levels=ASkill)
value <- c(40, ifelse(GetCoreLv(BowmasterCore, "HurricaneArrow")>=40, 20, 0), 2 * GetCoreLv(BowmasterCore, "HurricaneArrow"))
info <- c((350 + 3 * BowmasterSpec$SkillLv) * 0.75, 2, 120, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
HurricaneArrow <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(BowmasterCore, "ArrowPlatter_FlashMirage")>=40, 20, 0), 2 * GetCoreLv(BowmasterCore, "ArrowPlatter_FlashMirage"))
info <- c(420 + 120 + 2 * BowmasterSpec$SkillLv, 4 * 4, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
FlashMirage <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(BowmasterCore, "AdvancedQuiver")>=40, 20, 0), 2 * GetCoreLv(BowmasterCore, "AdvancedQuiver"))
info <- c(260, 0.6, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
QuiverMagic <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(BowmasterCore, "AdvancedQuiver")>=40, 20, 0), 2 * GetCoreLv(BowmasterCore, "AdvancedQuiver"))
info <- c(260, 1, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
QuiverMagicRain <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(BowmasterCore, "AdvancedFinalAttack")>=40, 20, 0), BowmasterBase$MonsterLife$FinalATKDMR, 2 * GetCoreLv(BowmasterCore, "AdvancedFinalAttack"))
info <- c(210 + 2 * BowmasterBase$SkillLv, 0.7 + 0.01 * BowmasterBase$SkillLv, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
AdvancedFinalAttack <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(700 + 28 * GetCoreLv(BowmasterCore, "ArrowRain"), 7, 0, 1000, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
ArrowRain1 <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(700 + 28 * GetCoreLv(BowmasterCore, "ArrowRain"), 7, 0, 1000, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
ArrowRain2 <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(400 + 16 * GetCoreLv(BowmasterCore, "AfterimageArrow"), 3, 0, 210, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
AfterimageArrowActive <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(400 + 16 * GetCoreLv(BowmasterCore, "AfterimageArrow"), 3, 0, 210, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
AfterimageArrowPassive <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(250 + 10 * GetCoreLv(BowmasterCore, "QuiverFullBurst"), 9, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
QuiverFlame <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(400 + 16 * GetCoreLv(BowmasterCore, "SilhouetteMirage"), 3, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
SilhouetteMirage <- rbind(data.frame(option, value), info)}

BowmasterATK <- Attack(list(HurricaneArrow=HurricaneArrow, FlashMirage=FlashMirage, QuiverMagic=QuiverMagic, QuiverMagicRain=QuiverMagicRain, AdvancedFinalAttack=AdvancedFinalAttack, 
                            ArrowRain1=ArrowRain1, ArrowRain2=ArrowRain2, AfterimageArrowActive=AfterimageArrowActive, AfterimageArrowPassive=AfterimageArrowPassive, 
                            QuiverFlame=QuiverFlame, SilhouetteMirage=SilhouetteMirage, SpiderInMirror=SpiderInMirror))



## Bowmaster - Summoned
{option <- factor(c("BDR", "FDR", "IGR"), levels=SSkill)
value <- c(30, 2 * GetCoreLv(BowmasterCore, "ArrowPlatter_FlashMirage"), ifelse(GetCoreLv(BowmasterCore, "ArrowPlatter_FlashMirage")>=40, 20, 0))
info <- c(175, 1, 0, 210, 30, NA, T, NA, NA, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
ArrowPlatter <- rbind(data.frame(option, value), info) 

option <- factor(c("FDR", "IGR"), levels=SSkill)
value <- c(3 * GetCoreLv(BowmasterCore, "Phoenix"), ifelse(GetCoreLv(BowmasterCore, "Phoenix")>=40, 20, 0))
info <- c(390, 1, 0, 1710, 220, 105, T, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
Phoenix <- rbind(data.frame(option, value), info) 

option <- factor(levels=SSkill)
value <- c()
info <- c(450 + 15 * GetCoreLv(BowmasterCore, "Evolve"), 7, 600, 3030, 40, 105, F, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
Evolve <- rbind(data.frame(option, value), info) 

option <- factor(levels=SSkill)
value <- c()
info <- c(400 + 16 * GetCoreLv(BowmasterCore, "GuidedArrow"), 1, 0, 510, 600, NA, F, F, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
GuidedArrow <- rbind(data.frame(option, value), info)}

BowmasterSummoned <- Summoned(list(ArrowPlatter=ArrowPlatter, Phoenix=Phoenix, Evolve=Evolve, GuidedArrow=GuidedArrow, SpiderInMirrorStart=SpiderInMirrorStart, 
                                   SpiderInMirror1=SpiderInMirror1, SpiderInMirror2=SpiderInMirror2, SpiderInMirror3=SpiderInMirror3, 
                                   SpiderInMirror4=SpiderInMirror4, SpiderInMirror5=SpiderInMirror5, SpiderInMirrorWait=SpiderInMirrorWait))



## Bowmaster - DealCycle & Deal Calculation
ATKFinal <- data.frame(BowmasterATK)
ATKFinal$Delay[c(-1)] <- Delay(ATKFinal$Delay, BowmasterSpec$ATKSpeed)[c(-1)]
ATKFinal$CoolTime <- Cooldown(ATKFinal$CoolTime, ATKFinal$CoolReduceAvailable, BowmasterSpec$CoolReduceP, BowmasterSpec$CoolReduce)

BuffFinal <- data.frame(BowmasterBuff)
BuffFinal$CoolTime <- Cooldown(BuffFinal$CoolTime, BuffFinal$CoolReduceAvailable, BowmasterSpec$CoolReduceP, BowmasterSpec$CoolReduce)
BuffFinal$Duration <- BuffFinal$Duration + BuffFinal$Duration * ifelse(BuffFinal$BuffDurationAvailable==T, BowmasterSpec$BuffDuration / 100, 0) +
  ifelse(BuffFinal$ServerLag==T, General$General$Serverlag, 0)

SummonedFinal <- data.frame(BowmasterSummoned)
SummonedFinal$CoolTime <- Cooldown(SummonedFinal$CoolTime, SummonedFinal$CoolReduceAvailable, BowmasterSpec$CoolReduceP, BowmasterSpec$CoolReduce)
SummonedFinal$Duration <- SummonedFinal$Duration + ifelse(SummonedFinal$SummonedDurationAvailable==T, SummonedFinal$Duration * BowmasterSpec$SummonedDuration / 100, 0)


## Bowmaster - DealCycle
DealCycle <- c("Skills", "Time", rownames(BowmasterBuff))
BowmasterDealCycle <- t(rep(0, length(DealCycle)))
colnames(BowmasterDealCycle) <- DealCycle
BowmasterDealCycle <- data.frame(BowmasterDealCycle)

BowmasterCycle <- function(PreDealCycle, ATKFinal, BuffFinal, SummonedFinal, Spec, 
                          Period=c(120), CycleTime, SummonSkillPeriod) {
  BuffSummonedPrior <- c("SharpEyes", "MapleSoldier", "EpicAdventure", "UsefulCombatOrders", "UsefulAdvancedBless", "GuidedArrow", "Evolve", "ArrowPlatter", 
                         "MapleWarriors2", "Preperation", "ArrowRainBuff", "SoulContractLink", "QuiverFullBurst", "CriticalReinforce", "Restraint4", "AfterimageArrowBuff")
  Times120 <- c(0, 0, 0, 0, 0, 0, 1, 4, 0.5, 1, 1, 1, 1, 1, 0.5, 1)
  if(nrow(BuffFinal[rownames(BuffFinal)=="UsefulAdvancedBless", ]) == 0) {
    Times120 <- Times120[BuffSummonedPrior!="UsefulAdvancedBless"]
    BuffSummonedPrior <- BuffSummonedPrior[BuffSummonedPrior!="UsefulAdvancedBless"]
  }
  
  SubTime <- rep(Period * ((100 - Spec$CoolReduceP) / 100) - Spec$CoolReduce, length(BuffSummonedPrior))
  TotalTime <- CycleTime * ((100 - Spec$CoolReduceP) / 100) - Spec$CoolReduce
  for(i in 1:length(BuffSummonedPrior)) {
    SubTime[i] <- SubTime[i] / ifelse(Times120[i]==0, Inf, Times120[i])
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
    } else {
      DealCycle <- DCSummoned(DealCycle, BuffList[[1]][i], SummonedFinal)
      if(BuffList[[1]][i]=="ArrowPlatter") {
        DealCycle <- DCATK(DealCycle, "SpiderInMirror", ATKFinal)
      }
    }
  }
  
  SubTimeList <- data.frame(Skills=BuffSummonedPrior, SubTime=SubTime, stringsAsFactors=F)
  NoSubTime <- subset(SubTimeList, SubTimeList$SubTime==0)$Skills
  NoSubTimeBuff <- c() ; NoSubTimeSummoned <- c()
  for(i in 1:length(NoSubTime)) {
    if(sum(NoSubTime[i]==SummonSkillPeriod$Skills) > 0) {
      NoSubTimeSummoned <- c(NoSubTimeSummoned, NoSubTime[i])
    } else {
      NoSubTimeBuff <- c(NoSubTimeBuff, NoSubTime[i])
    }
  }
  ColNums <- c()
  for(i in 1:length(NoSubTimeBuff)) {
    for(j in 1:length(colnames(DealCycle))) {
      if(NoSubTimeBuff[i]==colnames(DealCycle)[j]) {
        ColNums[i] <- j
      }
    }
  }
  BuffList[[length(BuffList)+1]] <- BuffList[[1]]
  BuffDelays[[length(BuffDelays)+1]] <- BuffDelays[[1]]
  TimeTypes <- c(0, TimeTypes, TotalTime/1000)
  AfterimageDummy <- 0
  
  
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
        }
      }
      DealCycle <- DCATK(DealCycle, "HurricaneArrow", ATKFinal)
      if(max(DealCycle$Time) > max(subset(DealCycle, DealCycle$Skills=="AfterimageArrowBuff")$Time) + 30000 & 
         max(DealCycle$Time) < max(subset(DealCycle, DealCycle$Skills=="AfterimageArrowBuff")$Time) + 120000 * ((100 - Spec$CoolReduceP) / 100) - Spec$CoolReduce * 1000) {
        if(nrow(subset(DealCycle, DealCycle$Skills=="AfterimageArrowPassive"))==0) {
          AfterimageDummy <- AfterimageDummy + 1
        } else if(max(DealCycle$Time) > max(subset(DealCycle, DealCycle$Skills=="AfterimageArrowPassive")$Time) + 1000) {
          AfterimageDummy <- AfterimageDummy + 1
        }
      }
      if(AfterimageDummy==10) {
        DealCycle <- rbind(DealCycle, DealCycle[nrow(DealCycle), ])
        DealCycle$Skills[nrow(DealCycle)] <- "AfterimageArrowPassive"
        AfterimageDummy <- 0
      }
    }
    
    if(k != length(BuffList)) {
      for(i in 1:length(BuffList[[k]])) {
        if(sum(rownames(BuffFinal)==BuffList[[k]][i]) > 0) {
          DealCycle <- DCBuff(DealCycle, BuffList[[k]][i], BuffFinal)
          AfterimageDummy <- 0
        } else {
          DealCycle <- DCSummoned(DealCycle, BuffList[[k]][i], SummonedFinal)
        }
      }
    }
  }
  DealCycle <- DealCycleFinal(DealCycle)
  return(DealCycle)
}
BMEvolveCycle <- function(DealCycleWithEvolve) {
  SkillInd <- DealCycleWithEvolve[, 1] == "EvolveSummoned"
  
  Evolves <- DealCycleWithEvolve[SkillInd, ]
  maxtime <- max(DealCycleWithEvolve[, 2])
  
  for(i in 1:nrow(Evolves)) {
    DC <- Evolves[i, ]
    DC <- rbind(DC, DC)
    DC[2, 1] <- c("Phoenix")
    DC[2, 2] <- DC[1, 2] + 41710
    
    p <- 3
    t <- 40000 + 1710 * 2
    interval <- ifelse(is.na(Evolves[i+1, 2])==T, maxtime - Evolves[i, 2], Evolves[i+1, 2] - Evolves[i, 2])
    while(t < interval & t < 242000) {
      DC <- rbind(DC, DC[p-1, ])
      DC[p, 2] <- DC[p-1, 2] + 1710
      p <- p + 1
      t <- t + 1710
    }
    DealCycleWithEvolve <- rbind(DealCycleWithEvolve, DC[2:nrow(DC), ])
  }
  DealCycleWithEvolve <- DealCycleWithEvolve[order(DealCycleWithEvolve$Time), ] 
  rownames(DealCycleWithEvolve) <- 1:nrow(DealCycleWithEvolve)
  
  for(i in 1:nrow(DealCycleWithEvolve)) {
    if("Pheonix"==DealCycleWithEvolve[i, 1]) {
      DealCycleWithEvolve[i, 3:ncol(DealCycleWithEvolve)] <- DealCycleWithEvolve[i-1, 3:ncol(DealCycleWithEvolve)] - (DealCycleWithEvolve[i, 2] - DealCycleWithEvolve[i-1, 2])
      DealCycleWithEvolve[i, 3:ncol(DealCycleWithEvolve)] <- ifelse(DealCycleWithEvolve[i, 3:ncol(DealCycleWithEvolve)]<0, 0, DealCycleWithEvolve[i, 3:ncol(DealCycleWithEvolve)])
    }
  }
  return(DealCycleWithEvolve)
}
BowmasterAddATK <- function(DealCycle, ATKFinal, SummonedFinal, Spec) {
  ## Afterimage Arrow
  for(i in 1:(nrow(DealCycle))) {
    if(DealCycle$Skills[i]=="AfterimageArrowBuff") {
      DealCycle <- rbind(DealCycle, DealCycle[i, ])
      DealCycle$Skills[nrow(DealCycle)] <- c("AfterimageArrowActive")
    }
  }
  DealCycle <- DealCycle[order(DealCycle$Time), ]
  rownames(DealCycle) <- 1:nrow(DealCycle)
  
  DealCycle <- RepATKCycle(DealCycle, c("AfterimageArrowActive"), 141, 600, ATKFinal)
  DealCycle <- RepATKCycle(DealCycle, c("AfterimageArrowPassive"), 4, 210, ATKFinal)
  
  
  ## Guided Arrow, Arrow Platter, Evolve, Phoenix
  DealCycle <- DCSummonedATKs(DealCycle, Skill=c("GuidedArrow", "ArrowPlatter", "Evolve"), SummonedFinal)
  DealCycle <- BMEvolveCycle(DealCycle)
  
  
  ## Arrow Rain, Quiver Fullburst, Silhouette Mirage
  RainTime <- 5000 ; QuiverFlameTime <- 2000 ; MirageTime <- 7500 ; t <- 1
  for(i in 1:(nrow(DealCycle)-1)) {
    if(sum(DealCycle$Skills[i]==c("AfterimageArrowActive", "HurricaneArrow")) > 0) {
      if(DealCycle$ArrowRainBuff[i] > 0 & RainTime >= 5000) {
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        if(t==1) {
          DealCycle$Skills[nrow(DealCycle)] <- c("ArrowRain1")
          t <- 0
        } else {
          DealCycle$Skills[nrow(DealCycle)] <- c("ArrowRain2")
          t <- 1
        }
        RainTime <- DealCycle$Time[i+1] - DealCycle$Time[i]
      } else {
        RainTime <- RainTime + DealCycle$Time[i+1] - DealCycle$Time[i]
      }
      if(DealCycle$QuiverFullBurst[i] > 0 & QuiverFlameTime >= 2000 & nrow(DealCycle[DealCycle$Skills=="QuiverFlame", ]) < nrow(DealCycle[DealCycle$Skills=="QuiverFullBurst", ]) * 18 * 6) {
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle$Skills[(nrow(DealCycle)-5):nrow(DealCycle)] <- c("QuiverFlame")
        QuiverFlameTime <- DealCycle$Time[i+1] - DealCycle$Time[i]
      } else {
        QuiverFlameTime <- QuiverFlameTime + DealCycle$Time[i+1] - DealCycle$Time[i]
      }
      if(MirageTime >= 7500) {
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle$Skills[(nrow(DealCycle)-4):nrow(DealCycle)] <- c("SilhouetteMirage")
        MirageTime <- DealCycle$Time[i+1] - DealCycle$Time[i]
      } else {
        MirageTime <- MirageTime + DealCycle$Time[i+1] - DealCycle$Time[i]
      }
    } else {
      RainTime <- RainTime + DealCycle$Time[i+1] - DealCycle$Time[i]
      QuiverFlameTime <- QuiverFlameTime + DealCycle$Time[i+1] - DealCycle$Time[i]
      MirageTime <- MirageTime + DealCycle$Time[i+1] - DealCycle$Time[i]
    }
  }
  DealCycle <- DealCycle[order(DealCycle$Time), ]
  rownames(DealCycle) <- 1:nrow(DealCycle)
  
  DealCycle <- RepATKCycle(DealCycle, c("ArrowRain1"), 4, 0, ATKFinal)
  DealCycle <- RepATKCycle(DealCycle, c("ArrowRain2"), 3, 0, ATKFinal)
  
  
  ## Advanced Final Attack, Advanced Quiver 
  for(i in 1:(nrow(DealCycle))) {
    if(sum(DealCycle$Skills[i]==c("AfterimageArrowActive", "HurricaneArrow")) > 0) {
      DealCycle <- rbind(DealCycle, DealCycle[i, ])
      DealCycle$Skills[nrow(DealCycle)] <- c("AdvancedFinalAttack")
    }
  }
  for(i in 1:(nrow(DealCycle))) {
    if(sum(DealCycle$Skills[i]==c("ArrowRain1", "ArrowRain2")) > 0) {
      DealCycle <- rbind(DealCycle, DealCycle[i, ])
      DealCycle$Skills[nrow(DealCycle)] <- c("QuiverMagicRain")
    } else if(sum(DealCycle$Skills[i]==c("HurricaneArrow", "QuiverFlame", "SilhouetteMirage", "GuidedArrow")) > 0) {
      DealCycle <- rbind(DealCycle, DealCycle[i, ])
      DealCycle$Skills[nrow(DealCycle)] <- c("QuiverMagic")
    } 
  }
  DealCycle <- DealCycle[order(DealCycle$Time), ]
  rownames(DealCycle) <- 1:nrow(DealCycle)
  
  
  ## Spider In Mirror
  DealCycle <- DCSpiderInMirror(DealCycle, SummonedFinal)
  
  
  ## Flash Mirage
  FlashMirageIdx <- 0
  for(i in 1:(nrow(DealCycle)-1)) {
    if(sum(DealCycle$Skills[i]==c("HurricaneArrow", "ArrowRain1", "ArrowRain2", "QuiverFlame", "SilhouetteMirage", "GuidedArrow", "AfterimageArrowActive")) > 0) {
      if(FlashMirageIdx==7 * 7) {
        DealCycle <- rbind(DealCycle, DealCycle[i, ])
        DealCycle$Skills[nrow(DealCycle)] <- c("FlashMirage")
        FlashMirageIdx <- 0
      } else {
        FlashMirageIdx <- FlashMirageIdx + 1
      }
    }
  }
  DealCycle <- DealCycle[order(DealCycle$Time), ]
  rownames(DealCycle) <- 1:nrow(DealCycle)
  
  
  ## Motal Blow
  MotalIdx <- 0
  for(i in 1:(nrow(DealCycle)-1)) {
    if(sum(DealCycle$Skills[i]==c("HurricaneArrow", "AfterimageArrowActive")) > 0) {
      DealCycle$MotalBlowDummy[i] <- max(0, DealCycle$MotalBlowDummy[i-1] - (DealCycle$Time[i] - DealCycle$Time[i-1]))
      if(MotalIdx==30) {
        DealCycle$MotalBlowDummy[i] <- 5000
        MotalIdx <- 0
      } else if(DealCycle$MotalBlowDummy[i] == 0) {
        MotalIdx <- MotalIdx + 1
      }
    } else {
      DealCycle$MotalBlowDummy[i] <- max(0, DealCycle$MotalBlowDummy[i-1] - (DealCycle$Time[i] - DealCycle$Time[i-1]))
    }
  }
  
  
  ## Armor Piercing
  ArmorCT <- Cooldown(9, T, BowmasterSpec$CoolReduceP, BowmasterSpec$CoolReduce) * 1000
  ArmorDummy <- 0 ; CoolCut <- 0
  for(i in 1:(nrow(DealCycle)-1)) {
    if(sum(DealCycle$Skills[i]==c("HurricaneArrow", "ArrowRain1", "ArrowRain2", "QuiverFlame", "SilhouetteMirage", "GuidedArrow", "AfterimageArrowActive")) > 0) {
      if(ArmorDummy==0 & sum(DealCycle$Skills[i]==c("HurricaneArrow", "AfterimageArrowActive")) > 0) {
        DealCycle$ArmorPiercingDummy[i] <- 1
        ArmorDummy <- ArmorCT
        CoolCut <- 0
      } else {
        CoolCut <- min(CoolCut + 1000, ArmorCT - 1000)
      }
    }
    ArmorDummy <- max(ArmorDummy - (DealCycle$Time[i+1] - DealCycle$Time[i]), 0)
    ArmorDummy <- ifelse(ArmorDummy - CoolCut < 0, 0, ArmorDummy)
  }
  
  return(DealCycle)
}

BowmasterDealCycle <- BowmasterCycle(PreDealCycle = BowmasterDealCycle, 
                                     ATKFinal = ATKFinal, 
                                     BuffFinal = BuffFinal, 
                                     SummonedFinal = SummonedFinal, 
                                     Spec = BowmasterSpec, 
                                     Period = 120, 
                                     CycleTime = 240, 
                                     SummonSkillPeriod = data.frame())
BowmasterDealCycle <- BowmasterAddATK(BowmasterDealCycle, ATKFinal, SummonedFinal)
BowmasterDealCycleReduction <- DealCycleReduction(BowmasterDealCycle)

Idx1 <- c() ; Idx2 <- c()
for(i in 1:length(PotentialOpt)) {
  if(names(PotentialOpt)[i]==DPMCalcOption$SpecSet) {
    Idx1 <- i
  }
}
for(i in 1:nrow(PotentialOpt[[Idx1]])) {
  if(rownames(PotentialOpt[[Idx1]])[i]=="Bowmaster") {
    Idx2 <- i
  }
}
if(DPMCalcOption$Optimization==T) {
  BowmasterSpecOpt1 <- Optimization1(BowmasterDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, BowmasterSpec, BowmasterUnionRemained)
  PotentialOpt[[Idx1]][Idx2, ] <- BowmasterSpecOpt1[1, 1:3]
} else {
  BowmasterSpecOpt1 <- PotentialOpt[[Idx1]][Idx2, ]
}
BowmasterSpecOpt <- OptDataAdd(BowmasterSpec, BowmasterSpecOpt1, "Potential", BowmasterBase$CRROver, DemonAvenger=F)

if(DPMCalcOption$Optimization==T) {
  BowmasterSpecOpt2 <- Optimization2(BowmasterDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, BowmasterSpecOpt, BowmasterHyperStatBase, BowmasterBase$ChrLv, BowmasterBase$CRROver)
  HyperStatOpt[[Idx1]][Idx2, c(1, 3:10)] <- BowmasterSpecOpt2[1, ]
} else {
  BowmasterSpecOpt2 <- HyperStatOpt[[Idx1]][Idx2, ]
}
BowmasterSpecOpt <- OptDataAdd(BowmasterSpecOpt, BowmasterSpecOpt2, "HyperStat", BowmasterBase$CRROver, DemonAvenger=F)
BuffFinal <- CriReinAdj(BowmasterSpec, BowmasterSpecOpt, BuffFinal, GetCoreLv(BowmasterCore, "CriticalReinforce"))

BowmasterFinalDPM <- DealCalc(BowmasterDealCycle, ATKFinal, BuffFinal, SummonedFinal, BowmasterSpecOpt, Collapse=F)
BowmasterFinalDPMwithMax <- DealCalcWithMaxDMR(BowmasterDealCycle, ATKFinal, BuffFinal, SummonedFinal, BowmasterSpecOpt)

set(get(DPMCalcOption$DataName), as.integer(1), "Bowmaster", sum(na.omit(BowmasterFinalDPMwithMax)) / (max(BowmasterDealCycle$Time) / 60000))
set(get(DPMCalcOption$DataName), as.integer(2), "Bowmaster", sum(na.omit(BowmasterFinalDPM)) / (max(BowmasterDealCycle$Time) / 60000) - sum(na.omit(BowmasterFinalDPMwithMax)) / (max(BowmasterDealCycle$Time) / 60000))

BowmasterDealRatio <- DealRatio(BowmasterDealCycle, BowmasterFinalDPMwithMax)

BowmasterDealData <- data.frame(BowmasterDealCycle$Skills, BowmasterDealCycle$Time, BowmasterDealCycle$Restraint4, BowmasterFinalDPMwithMax)
colnames(BowmasterDealData) <- c("Skills", "Time", "R4", "Deal")
set(get(DPMCalcOption$DataName), as.integer(3), "Bowmaster", Deal_RR(BowmasterDealData))
set(get(DPMCalcOption$DataName), as.integer(4), "Bowmaster", Deal_40s(BowmasterDealData))

BowmasterSpecMean <- SpecMean("Bowmaster", BowmasterDealCycleReduction, 
                              DealCalcWithMaxDMR(BowmasterDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, BowmasterSpecOpt), 
                              ATKFinal, BuffFinal, SummonedFinal, BowmasterSpecOpt)