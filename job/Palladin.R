## Palladin - Data
## Palladin - VMatrix
PalladinCoreBase <- CoreBuilder(ActSkills=c("HolyUnity", "BlessedHammer", "GrandCross", "MightyMjolnir", 
                                            CommonV("Warrior", "Adventure")), 
                                ActSkillsLv=c(25, 25, 25, 25, 25, 1, 1, 25, 25), 
                                UsefulSkills=c("SharpEyes"), 
                                SpecSet=get(DPMCalcOption$SpecSet), 
                                VPassiveList=PalladinVPassive, 
                                VPassivePrior=PalladinVPrior, 
                                SelfBind=T)

PalladinCore <- MatrixSet(PasSkills=PalladinCoreBase$PasSkills$Skills, 
                            PasLvs=PalladinCoreBase$PasSkills$Lv, 
                            PasMP=PalladinCoreBase$PasSkills$MP, 
                            ActSkills=PalladinCoreBase$ActSkills$Skills, 
                            ActLvs=PalladinCoreBase$ActSkills$Lv, 
                            ActMP=PalladinCoreBase$ActSkills$MP, 
                            UsefulSkills=PalladinCoreBase$UsefulSkills, 
                            UsefulLvs=20, 
                            UsefulMP=0, 
                            SpecSet=get(DPMCalcOption$SpecSet), 
                            SpecialCore=PalladinCoreBase$SpecialCoreUse)



## Palladin - Basic Info
PalladinBase <- JobBase(ChrInfo=ChrInfo, 
                        MobInfo=get(DPMCalcOption$MobSet),
                        SpecSet=get(DPMCalcOption$SpecSet), 
                        Job="Palladin",
                        CoreData=PalladinCore, 
                        BuffDurationNeeded=0, 
                        AbilList=FindJob(get(paste(DPMCalcOption$SpecSet, "Ability", sep="")), "Palladin"), 
                        LinkList=FindJob(get(paste(DPMCalcOption$SpecSet, "Link", sep="")), "Palladin"), 
                        MonsterLife=get(FindJob(MonsterLifePreSet, "Palladin")[DPMCalcOption$MonsterLifeLevel][1, 1]), 
                        Weapon=WeaponUpgrade(1, DPMCalcOption$WeaponSF, 4, 0, 0, 0, 0, 3, 0, 0, "TwohandHammer", get(DPMCalcOption$SpecSet)$WeaponType)[, 1:16],
                        WeaponType=get(DPMCalcOption$SpecSet)$WeaponType, 
                        SubWeapon=SubWeapon[rownames(SubWeapon)=="Rosario", ], 
                        Emblem=Emblem[rownames(Emblem)=="MapleLeaf", ], 
                        CoolReduceHat=as.logical(FindJob(get(paste(DPMCalcOption$SpecSet, "CoolReduceHat", sep="")), "Palladin")))



## Palladin - Passive
{option <- factor(c("ATKSpeed"), levels=PSkill)
value <- c(1)
WeaponMastery <- data.frame(option, value)
  
option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(30, 30)
PhysicalTraining <- data.frame(option, value)

option <- factor(c("ATKSpeed", "MainStat"), levels=PSkill)
value <- c(2, 20)
WeaponAcceleration <- data.frame(option, value)

option <- factor("ATK", levels=PSkill)
value <- c(20)
ParashockGuard <- data.frame(option, value)

option <- factor("ATK", levels=PSkill)
value <- c(10)
ShieldMastery <- data.frame(option, value)

option <- factor("ATK", levels=PSkill)
value <- c(20)
BlessingArmor <- data.frame(option, value)

option <- factor(c("BDR", "ATK"), levels=PSkill)
value <- c(25, 60)
AdvancedHolyCharge <- data.frame(option, value)

option <- factor(c("Mastery", "CRR", "CDMR", "IGR", "FDR"), levels=PSkill)
value <- c(71, 42, 20, 37.9, 42)
PalladinExpert <- data.frame(option, value)

option <- factor(c("MainStat"), levels=PSkill)
value <- c(GetCoreLv(PalladinCore, "BodyofSteel"))
BodyofSteelPassive <- data.frame(option, value)

option <- factor(c("ATK"), levels=PSkill)
value <- c(GetCoreLv(PalladinCore, "Blink"))
BlinkPassive <- data.frame(option, value)

option <- factor(c("MainStat", "SubStat1"), levels=PSkill)
value <- c(rep(GetCoreLv(PalladinCore, "RopeConnect"), 2))
RopeConnectPassive <- data.frame(option, value)}

PalladinPassive <- Passive(list(WeaponMastery, PhysicalTraining, WeaponAcceleration, ParashockGuard, ShieldMastery, BlessingArmor, AdvancedHolyCharge, PalladinExpert, 
                                BodyofSteelPassive, BlinkPassive, RopeConnectPassive))


## Palladin - Buff
{option <- factor("SkillLv", levels=BSkill)
value <- c(2)
info <- c(200, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
CombatOrders <- rbind(data.frame(option, value), info)

option <- factor("IGR", levels=BSkill)
value <- c(50)
info <- c(80, NA, 720, F, NA, NA, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
NobleDemand <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=BSkill)
value <- c(21)
info <- c(206, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
DivineBlessing <- rbind(data.frame(option, value), info)

option <- factor("MainStat", levels=BSkill)
value <- c(floor((PalladinBase$ChrLv * 5 + 18) * (0.15 + 0.01 * ceiling(PalladinBase$SkillLv/2))))
info <- c(900 + 30 * PalladinBase$SkillLv, NA, 0, T, NA, NA, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleSoldier <- rbind(data.frame(option, value), info)

Useful <- UsefulSkills(PalladinCore)
UsefulSharpEyes <- Useful$UsefulSharpEyes
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  UsefulAdvancedBless <- Useful$UsefulAdvancedBless
}

option <- factor("BDR", levels=BSkill)
value <- c(5)
info <- c(120, 120, 0, F, F, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
EpicAdventure <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR", "ATKSkill"), levels=BSkill)
value <- c(10 + floor(GetCoreLv(PalladinCore, "AuraWeapon")/5), ceiling(GetCoreLv(PalladinCore, "AuraWeapon")/5), 1)
info <- c(80 + 2 * GetCoreLv(PalladinCore, "AuraWeapon"), 180, 720, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
AuraWeaponBuff <- rbind(data.frame(option, value), info)

option <- factor("FDR", levels=BSkill)
value <- c(60 + floor(GetCoreLv(PalladinCore, "HolyUnity")/2))
info <- c(30 + floor(GetCoreLv(PalladinCore, "HolyUnity")/2), 90, 600, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
HolyUnity <- rbind(data.frame(option, value), info)

option <- factor(c("MainStat", "BDR"), levels=BSkill)
value <- c(floor(((1 + 0.1 * GetCoreLv(PalladinCore, "MapleWarriors2")) * MapleSoldier[1, 2]) * PalladinBase$MainStatP), 5 + floor(GetCoreLv(PalladinCore, "MapleWarriors2")/2))
info <- c(60, 180, 630, F, T, F, T)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
MapleWarriors2 <- rbind(data.frame(option, value), info)

option <- factor(levels=BSkill)
value <- c()
info <- c(0, 1, 0, F, F, F, F)
info <- data.frame(BInfo, info)
colnames(info) <- c("option", "value")
DivineJudgementStack <- rbind(data.frame(option, value), info)}

PalladinBuff <- list(CombatOrders=CombatOrders, NobleDemand=NobleDemand, DivineBlessing=DivineBlessing, MapleSoldier=MapleSoldier, 
                     UsefulSharpEyes=UsefulSharpEyes, EpicAdventure=EpicAdventure, 
                     AuraWeaponBuff=AuraWeaponBuff, HolyUnity=HolyUnity, MapleWarriors2=MapleWarriors2, DivineJudgementStack=DivineJudgementStack, 
                     Restraint4=Restraint4, SoulContractLink=SoulContractLink)
## PetBuff : CombatOrders(990ms), DivineBlessing(810ms), MapleSoldier(0ms), UsefulSharpEyes(900ms), UsefulAdvancedBless(600ms)
if(sum(names(Useful)=="UsefulAdvancedBless") >= 1) {
  PalladinBuff[[length(PalladinBuff)+1]] <- UsefulAdvancedBless
  names(PalladinBuff)[[length(PalladinBuff)]] <- "UsefulAdvancedBless"
}
PalladinBuff <- Buff(PalladinBuff)
PalladinAllTimeBuff <- AllTimeBuff(PalladinBuff)


## Palladin - Union & HyperStat & SoulWeapon
PalladinSpec <- JobSpec(JobBase=PalladinBase, 
                      Passive=PalladinPassive, 
                      AllTimeBuff=PalladinAllTimeBuff, 
                      MobInfo=get(DPMCalcOption$MobSet), 
                      SpecSet=get(DPMCalcOption$SpecSet), 
                      WeaponName="TwohandHammer", 
                      UnionStance=0)

PalladinUnionRemained <- PalladinSpec$UnionRemained
PalladinHyperStatBase <- PalladinSpec$HyperStatBase
PalladinCoolReduceType <- PalladinSpec$CoolReduceType
PalladinSpec <- PalladinSpec$Spec


## Palladin - Spider In Mirror
SIM <- SIMData(GetCoreLv(PalladinCore, "SpiderInMirror"))
SpiderInMirror <- SIM$SpiderInMirror
SpiderInMirrorStart <- SIM$SpiderInMirrorStart
SpiderInMirror1 <- SIM$SpiderInMirror1
SpiderInMirror2 <- SIM$SpiderInMirror2
SpiderInMirror3 <- SIM$SpiderInMirror3
SpiderInMirror4 <- SIM$SpiderInMirror4
SpiderInMirror5 <- SIM$SpiderInMirror5
SpiderInMirrorWait <- SIM$SpiderInMirrorWait


## Palladin - Attacks
{option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(PalladinCore, "FinalAttack")>=40, 20, 0), PalladinBase$MonsterLife$FinalATKDMR, 4 * GetCoreLv(PalladinCore, "FinalAttack"))
info <- c(80, 0.8, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
FinalAttack <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement")>=40, 20, 0), 2 * GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement"))
info <- c(428, 7, 810, NA, 7, F, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
DivineStigma <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement")>=40, 20, 0), 2 * GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement"))
info <- c(296, 5, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
StigmaExplosion <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(PalladinCore, "Blast")>=40, 20, 0), 20, 2 * GetCoreLv(PalladinCore, "Blast"))
info <- c(291, 12, 780, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
Blast <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "FDR"), levels=ASkill)
value <- c(IGRCalc(c(20, ifelse(GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement")>=40, 20, 0))), 2 * GetCoreLv(PalladinCore, "DivineStigma_DivineJudgement"))
info <- c(506, 10, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
DivineJudgement <- rbind(data.frame(option, value), info)

option <- factor(c("IGR", "BDR", "FDR"), levels=ASkill)
value <- c(ifelse(GetCoreLv(PalladinCore, "Sanctuary")>=40, 20, 0), 50, 2 * GetCoreLv(PalladinCore, "Sanctuary"))
info <- c(580, 10, 990, NA, Cooldown(14, T, PalladinBase$UnionChrs$CoolReduceP + 30, PalladinBase$CoolReduce), F, T, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
Sanctuary <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(0, 0, 900, NA, 180, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
GrandCrossPre <- rbind(data.frame(option, value), info)

option <- factor(c("CRR", "IGR"), levels=ASkill)
value <- c(100, 100)
info <- c(270 + 13 * GetCoreLv(PalladinCore, "GrandCross"), 12, 1300, 210, 180, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
GrandCrossSmall <- rbind(data.frame(option, value), info)

option <- factor(c("CRR", "IGR"), levels=ASkill)
value <- c(100, 100)
info <- c(490 + 22 * GetCoreLv(PalladinCore, "GrandCross"), 12, 3800, 120, 180, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
GrandCrossBig <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(0, 0, 450, NA, 150, T, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
GrandCrossEnd <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(225 + 9 * GetCoreLv(PalladinCore, "MightyMjolnir"), 6, 0, 630, 15, F, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MightyMjolnir <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(250 + 10 * GetCoreLv(PalladinCore, "MightyMjolnir"), 9, 840, 630, 15, F, F, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
MightyMjolnirExplosion <- rbind(data.frame(option, value), info)

option <- factor(levels=ASkill)
value <- c()
info <- c(500 + 20 * GetCoreLv(PalladinCore, "AuraWeapon"), 6, 0, NA, NA, NA, NA, F)
info <- data.frame(AInfo, info)
colnames(info) <- c("option", "value")
AuraWeapon <- rbind(data.frame(option, value), info)}

PalladinATK <- Attack(list(FinalAttack=FinalAttack, DivineStigma=DivineStigma, StigmaExplosion=StigmaExplosion, Blast=Blast, DivineJudgement=DivineJudgement, Sanctuary=Sanctuary, 
                           GrandCrossPre=GrandCrossPre, GrandCrossSmall=GrandCrossSmall, GrandCrossBig=GrandCrossBig, GrandCrossEnd=GrandCrossEnd, 
                           MightyMjolnir=MightyMjolnir, MightyMjolnirExplosion=MightyMjolnirExplosion, AuraWeapon=AuraWeapon, 
                           SpiderInMirror=SpiderInMirror))


## Palladin - Summoned
{option <- factor(levels=SSkill)
value <- c()
info <- c(525 + 21 * GetCoreLv(PalladinCore, "BlessedHammer"), 4, 360, 600, 30 + General$General$Serverlag, 60, F, T, F, F)
info <- data.frame(SInfo, info)
colnames(info) <- c("option", "value")
BlessedHammer <- rbind(data.frame(option, value), info)}

PalladinSummoned <- Summoned(list(BlessedHammer=BlessedHammer, SpiderInMirrorStart=SpiderInMirrorStart,
                                  SpiderInMirror1=SpiderInMirror1, SpiderInMirror2=SpiderInMirror2, SpiderInMirror3=SpiderInMirror3, 
                                  SpiderInMirror4=SpiderInMirror4, SpiderInMirror5=SpiderInMirror5, SpiderInMirrorWait=SpiderInMirrorWait))


## Palladin - DealCycle
ATKFinal <- data.frame(PalladinATK)
ATKFinal$Delay[c(1:6, 11:14)] <- Delay(ATKFinal$Delay, PalladinSpec$ATKSpeed)[c(1:6, 11:14)]
ATKFinal$CoolTime <- Cooldown(ATKFinal$CoolTime, ATKFinal$CoolReduceAvailable, PalladinSpec$CoolReduceP, PalladinSpec$CoolReduce)

BuffFinal <- data.frame(PalladinBuff)
BuffFinal$CoolTime <- Cooldown(BuffFinal$CoolTime, BuffFinal$CoolReduceAvailable, PalladinSpec$CoolReduceP, PalladinSpec$CoolReduce)
BuffFinal$Duration <- BuffFinal$Duration + BuffFinal$Duration * ifelse(BuffFinal$BuffDurationAvailable==T, PalladinSpec$BuffDuration / 100, 0) +
  ifelse(BuffFinal$ServerLag==T, General$General$Serverlag, 0)

SummonedFinal <- data.frame(PalladinSummoned)
SummonedFinal$CoolTime <- Cooldown(SummonedFinal$CoolTime, SummonedFinal$CoolReduceAvailable, PalladinSpec$CoolReduceP, PalladinSpec$CoolReduce)
SummonedFinal$Duration <- SummonedFinal$Duration + ifelse(SummonedFinal$SummonedDurationAvailable==T, SummonedFinal$Duration * PalladinSpec$SummonedDuration / 100, 0)

DealCycle <- c("Skills", "Time", rownames(PalladinBuff))
PalladinDealCycle <- t(rep(0, length(DealCycle)))
colnames(PalladinDealCycle) <- DealCycle

PalladinCycle <- function(PreDealCycle, ATKFinal, BuffFinal, SummonedFinal, Spec, 
                          Period=c(180), CycleTime=360) {
  BuffSummonedPrior <- c("CombatOrders", "DivineBlessing", "MapleSoldier", "UsefulSharpEyes", "UsefulAdvancedBless", "EpicAdventure", 
                         "NobleDemand", "AuraWeaponBuff", "MapleWarriors2", "BlessedHammer", "SoulContractLink", "HolyUnity", "Restraint4")
  Times180 <- c(0, 0, 0, 0, 0, 0, 
                2.5, 1, 1, 3, 2, 2, 1)
  if(nrow(BuffFinal[rownames(BuffFinal)=="UsefulAdvancedBless", ]) == 0) {
    Times180 <- Times180[BuffSummonedPrior!="UsefulAdvancedBless"]
    BuffSummonedPrior <- BuffSummonedPrior[BuffSummonedPrior!="UsefulAdvancedBless"]
  }
  
  SubTime <- rep(Period * ((100 - Spec$CoolReduceP) / 100), length(BuffSummonedPrior))
  TotalTime <- CycleTime * ((100 - Spec$CoolReduceP) / 100)
  for(i in 1:length(BuffSummonedPrior)) {
    SubTime[i] <- SubTime[i] / ifelse(Times180[i]==0, Inf, Times180[i])
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
      if(BuffList[[1]][i]=="EpicAdventure") {
        DealCycle <- DCATK(DealCycle, "SpiderInMirror", ATKFinal)
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
  DSCool <- subset(ATKFinal, rownames(ATKFinal)=="DivineStigma")$CoolTime * 1000
  STCool <- subset(ATKFinal, rownames(ATKFinal)=="Sanctuary")$CoolTime * 1000
  MMCool <- subset(ATKFinal, rownames(ATKFinal)=="MightyMjolnir")$CoolTime * 1000
  DSRemain <- 0 ; STRemain <- 0 ; MMRemain <- 0
  GCSubTime <- Period * ((100 - Spec$CoolReduceP) / 100) - Spec$CoolReduce
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
          DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
          DSRemain <- max(0, DSRemain - DealCycle$Time[1])
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          STRemain <- max(0, STRemain - DealCycle$Time[1])
        }
      }
      ## Grand Cross
      if(nrow(subset(DealCycle, DealCycle$Skills=="GrandCrossPre"))==0) {
        DealCycle <- DCATK(DealCycle, "MightyMjolnir", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "MightyMjolnirExplosion", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossPre", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossSmall", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossBig", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossEnd", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        MMRemain <- 0
      } else if(nrow(subset(DealCycle, DealCycle$Skills=="GrandCrossPre")) > 0 & 
                DealCycle$Time[nrow(DealCycle)] + DealCycle$Time[1] - max(subset(DealCycle, DealCycle$Skills=="GrandCrossPre")$Time) > GCSubTime * 1000) {
        DealCycle <- DCATK(DealCycle, "MightyMjolnir", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "MightyMjolnirExplosion", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossPre", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossSmall", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossBig", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "GrandCrossEnd", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        MMRemain <- 0
      } 
      ## Mighty Mjolnir
      else if(MMRemain==0) {
        DealCycle <- DCATK(DealCycle, "MightyMjolnir", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        DealCycle <- DCATK(DealCycle, "MightyMjolnirExplosion", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        if(sum(BuffList[[k]]=="Restraint4")==1 & BuffEndTime - DealCycle$Time[nrow(DealCycle)] >= 20000 & BuffEndTime - DealCycle$Time[nrow(DealCycle)] <= 35000) {
          MMRemain <- BuffEndTime - DealCycle$Time[nrow(DealCycle)] - DealCycle$Time[1]
        } else {
          MMRemain <- MMCool - DealCycle$Time[1]
        }
      }
      ## Sanctuary
      else if(STRemain==0) {
        DealCycle <- DCATK(DealCycle, "Sanctuary", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        STRemain <- STCool - DealCycle$Time[1]
      }
      ## Divine Stigma
      ## else if(DSRemain==0) {
      ##   DealCycle <- DCATK(DealCycle, "StigmaExplosion", ATKFinal)
      ##   DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
      ##   DSRemain <- DSCool - DealCycle$Time[1]
      ##   MMRemain <- max(0, MMRemain - DealCycle$Time[1])
      ##   STRemain <- max(0, STRemain - DealCycle$Time[1])
        
      ##   DealCycle <- DCATK(DealCycle, "DivineStigma", ATKFinal)
      ##   DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
      ##   DSRemain <- max(0, DSRemain - DealCycle$Time[1])
      ##   MMRemain <- max(0, MMRemain - DealCycle$Time[1])
      ##   STRemain <- max(0, STRemain - DealCycle$Time[1])
      ## }
      ## Blast
      else {
        DealCycle <- DCATK(DealCycle, "Blast", ATKFinal)
        DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1] + 1
        DSRemain <- max(0, DSRemain - DealCycle$Time[1])
        MMRemain <- max(0, MMRemain - DealCycle$Time[1])
        STRemain <- max(0, STRemain - DealCycle$Time[1])
        if(DealCycle$DivineJudgementStack[nrow(DealCycle)] == 5) {
          DealCycle$DivineJudgementStack[nrow(DealCycle)] <- 0
          DealCycle <- DCATK(DealCycle, "DivineJudgement", ATKFinal)
          DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
          DSRemain <- max(0, DSRemain - DealCycle$Time[1])
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          STRemain <- max(0, STRemain - DealCycle$Time[1])
        }
      }
    }
    
    if(k != length(BuffList)) {
      for(i in 1:length(BuffList[[k]])) {
        if(sum(rownames(BuffFinal)==BuffList[[k]][i]) > 0) {
          DealCycle <- DCBuff(DealCycle, BuffList[[k]][i], BuffFinal)
          DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
          DSRemain <- max(0, DSRemain - DealCycle$Time[1])
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          STRemain <- max(0, STRemain - DealCycle$Time[1])
        } else {
          DealCycle <- DCSummoned(DealCycle, BuffList[[k]][i], SummonedFinal)
          DealCycle$DivineJudgementStack[nrow(DealCycle)] <- DealCycle$DivineJudgementStack[nrow(DealCycle)-1]
          DSRemain <- max(0, DSRemain - DealCycle$Time[1])
          MMRemain <- max(0, MMRemain - DealCycle$Time[1])
          STRemain <- max(0, STRemain - DealCycle$Time[1])
        }
      }
    }
  }
  
  return(DealCycle)
}

PalladinDealCycle <- PalladinCycle(PreDealCycle=PalladinDealCycle, 
                                   ATKFinal=ATKFinal,
                                   BuffFinal=BuffFinal, 
                                   SummonedFinal=SummonedFinal, 
                                   Spec=PalladinSpec,
                                   Period=180, 
                                   CycleTime=360)
PalladinDealCycle <- DealCycleFinal(PalladinDealCycle)
PalladinDealCycle <- RepATKCycle(PalladinDealCycle, c("MightyMjolnir"), 4, 630, ATKFinal)
PalladinDealCycle <- RepATKCycle(PalladinDealCycle, c("MightyMjolnirExplosion"), 4, 630, ATKFinal)
PalladinDealCycle <- RepATKCycle(PalladinDealCycle, c("GrandCrossSmall"), 7, 0, ATKFinal)
PalladinDealCycle <- RepATKCycle(PalladinDealCycle, c("GrandCrossBig"), 31, 170, ATKFinal)
PalladinDealCycle <- DCSummonedATKs(PalladinDealCycle, Skill=c("BlessedHammer"), SummonedFinal)
## PalladinDealCycle <- BlessedHammerCycle(PalladinDealCycle)
PalladinDealCycle <- AddATKsCyclePalladin(PalladinDealCycle)
PalladinDealCycle <- AuraWeaponCycle(PalladinDealCycle)
PalladinDealCycle <- DCSpiderInMirror(PalladinDealCycle, SummonedFinal)
PalladinDealCycleReduction <- DealCycleReduction(PalladinDealCycle)

Idx1 <- c() ; Idx2 <- c()
for(i in 1:length(PotentialOpt)) {
  if(names(PotentialOpt)[i]==DPMCalcOption$SpecSet) {
    Idx1 <- i
  }
}
for(i in 1:nrow(PotentialOpt[[Idx1]])) {
  if(rownames(PotentialOpt[[Idx1]])[i]=="Palladin") {
    Idx2 <- i
  }
}
if(DPMCalcOption$Optimization==T) {
  PalladinSpecOpt1 <- Optimization1(PalladinDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, PalladinSpec, PalladinUnionRemained)
  PotentialOpt[[Idx1]][Idx2, ] <- PalladinSpecOpt1[1, 1:3]
} else {
  PalladinSpecOpt1 <- PotentialOpt[[Idx1]][Idx2, ]
}
PalladinSpecOpt <- OptDataAdd(PalladinSpec, PalladinSpecOpt1, "Potential", PalladinBase$CRROver, DemonAvenger=F)

if(DPMCalcOption$Optimization==T) {
  PalladinSpecOpt2 <- Optimization2(PalladinDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, PalladinSpecOpt, PalladinHyperStatBase, PalladinBase$ChrLv, PalladinBase$CRROver)
  HyperStatOpt[[Idx1]][Idx2, c(1, 3:10)] <- PalladinSpecOpt2[1, ]
} else {
  PalladinSpecOpt2 <- HyperStatOpt[[Idx1]][Idx2, ]
}
PalladinSpecOpt <- OptDataAdd(PalladinSpecOpt, PalladinSpecOpt2, "HyperStat", PalladinBase$CRROver, DemonAvenger=F)

PalladinFinalDPM <- DealCalc(PalladinDealCycle, ATKFinal, BuffFinal, SummonedFinal, PalladinSpecOpt, Collapse=F)
PalladinFinalDPMwithMax <- DealCalcWithMaxDMR(PalladinDealCycle, ATKFinal, BuffFinal, SummonedFinal, PalladinSpecOpt)

set(get(DPMCalcOption$DataName), as.integer(1), "Palladin", sum(na.omit(PalladinFinalDPMwithMax)) / (max(PalladinDealCycle$Time) / 60000))
set(get(DPMCalcOption$DataName), as.integer(2), "Palladin", sum(na.omit(PalladinFinalDPM)) / (max(PalladinDealCycle$Time) / 60000) - sum(na.omit(PalladinFinalDPMwithMax)) / (max(PalladinDealCycle$Time) / 60000))

PalladinDealRatio <- DealRatio(PalladinDealCycle, PalladinFinalDPMwithMax)

PalladinDealData <- data.frame(PalladinDealCycle$Skills, PalladinDealCycle$Time, PalladinDealCycle$Restraint4, PalladinFinalDPMwithMax)
colnames(PalladinDealData) <- c("Skills", "Time", "R4", "Deal")
set(get(DPMCalcOption$DataName), as.integer(3), "Palladin", Deal_RR(PalladinDealData))
set(get(DPMCalcOption$DataName), as.integer(4), "Palladin", Deal_40s(PalladinDealData))

PalladinSpecMean <- SpecMean("Palladin", PalladinDealCycleReduction, 
                             DealCalcWithMaxDMR(PalladinDealCycleReduction, ATKFinal, BuffFinal, SummonedFinal, PalladinSpecOpt), 
                             ATKFinal, BuffFinal, SummonedFinal, PalladinSpecOpt)