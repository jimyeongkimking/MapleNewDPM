# MobInfo Set Structure
# [[1]] Basic
## Row Name : Mob Name
## Cols : Lv(Numeric), NeedArc(Logical), NeedAut(Logical), Arc(Numeric), Aut(Numeric), 
## Cols : Guard(Numeric), PhysicsImmune(Logical), Size(Categorical : 1/Scarecrow, 2/HardLucid3rdPhase)

# MobInfo - Default
MobDefault <- list()
MobDefault$Basic <- data.frame(Lv=250, 
                               NeedArc=T, 
                               NeedAut=F, 
                               Arc=760, 
                               Aut=NA, 
                               Guard=300, 
                               PhysicImmune=T, 
                               Size=1)
rownames(MobDefault$Basic) <- "Default"



# GeneralInfo Set Structure
# [[1]] General
## Row Name : Set Name
## Cols : Serverlag(Numeric/sec), PartyMembers(Numeric)

# GeneralInfo - Default
General <- list()
General$General <- data.frame(Serverlag=3, 
                              PartyMembers=1)
rownames(General$General) <- "Default"



# Spec Set Structure
# [[1]] Basic
## Cols : ChrLv(Numeric), UnionLv(Numeric), ArcaneForce(Numeric), ArcaneForceStat(Numeric), AuthenticForce(Numeric), 
## Cols : Charisma(Numeric), Insight(Numeric), Sensibility(Numeric)

# [[2]] AbilityGrade
## Categorical, Vector : E/Epic, U/Unique, L/Legendry

# [[3]] WeaponType
## Categorical : F/Fafnir, AB/Absolabs, AR/ArcaneShade

# [[4]] WeaponAddPGrade
## Categorical, length 3 Vector : E/Epic, U/Unique, L/Legendry

# [[5]] WeaponAddPOp
## Categorical, length 3 Vector : A/ATKP, O/Others 

# [[6]] Pets
## Categorical, length 3 Vector : D/Dream, P/Petit

# [[7]] ItemSet + SetOption
## SpecSet on Item Data + SetOption + PetSetOption

# [[8]] CoolReduceInfo
## CoolReduce Types : StatP / CoolReduce

# [[9]] Common V Skills Set
## Rownames : Blink, ErdaNova, ErdaWill, RopeConnect, SpecialCore, CrestoftheSolar
## Cols : Use(Logical), Lv(Logical)

# SpecSet - Default
SpecDefault <- list()
SpecDefault$Basic <- data.frame(ChrLv=255, 
                                UnionLv=8000, 
                                ArcaneForce=1350, 
                                ArcaneForceStat=13200, 
                                AuthenticForceStat=0,
                                Charisma=100, 
                                Insight=100, 
                                Sensibility=100, 
                                Will=100)
SpecDefault$AbilityGrade <- c("L", "E")
SpecDefault$WeaponType <- "AR"
SpecDefault$WeaponAddPGrade <- c("U", "U", "U")
SpecDefault$WeaponAddPOp <- c("A", "A", "O")
SpecDefault$Pets <- c("D", "D", "D")
SpecDefault$ItemSet <- ItemSum(SpecSet1, SetOption(SpecSet1, SpecDefault$WeaponType), PetSetOption(SpecDefault$Pets))
SpecDefault$CoolReduceInfo <- data.frame(MainStatP=c(0, -12), 
                                         CoolReduce=c(0, 2))
SpecDefault$CommonVSet <- data.frame(Use=c(T, T, F, F, F, F), 
                                     Lv=c(1, 1, 0, 0, 0, 0), 
                                     row.names=c("Blink", "ErdaNova", "ErdaWill", "RopeConnect", "SpecialCore", "CrestoftheSolar"))


## SpecSet - Default (Zero)
SpecDefaultZero <- SpecDefault
SpecDefaultZero$ItemSet <- ItemSum(SpecSetZero1, SetOption(SpecSetZero1, "F"), PetSetOption(SpecDefaultZero$Pets))


## SpecSet - Default (Xenon_A6S6 / Xenon_A6A3)
SpecDefaultXenon_A6S6 <- SpecDefault
SpecDefaultXenon_A6S6$ItemSet <- ItemSum(SpecSetXenon1_A6S6, SetOption(SpecSetXenon1_A6S6, "AR"), PetSetOption(SpecDefaultXenon_A6S6$Pets))
SpecDefaultXenon_A6S6$CoolReduceInfo <- data.frame(AllStatP=c(0, -9), 
                                                   CoolReduce=c(0, 2))

SpecDefaultXenon_A6A3 <- SpecDefault
SpecDefaultXenon_A6A3$ItemSet <- ItemSum(SpecSetXenon1_A6A3, SetOption(SpecSetXenon1_A6A3, "AR"), PetSetOption(SpecDefaultXenon_A6A3$Pets))
SpecDefaultXenon_A6A3$CoolReduceInfo <- data.frame(AllStatP=c(0, -9), 
                                                   CoolReduce=c(0, 2))


## SpecSet - Default (DemonAvenger)
SpecDefaultDemonAvenger <- SpecDefault
SpecDefaultDemonAvenger$ItemSet <- ItemSum(SpecSetDemonAvenger1, SetOption(SpecSetDemonAvenger1, "AR"), PetSetOption(SpecDefaultDemonAvenger$Pets))


## SpecSet - Legendry
SpecLegendry <- list()
SpecLegendry$Basic <- data.frame(ChrLv=270, 
                                 UnionLv=8000, 
                                 ArcaneForce=1350, 
                                 ArcaneForceStat=13200, 
                                 AuthenticForceStat=2600,
                                 Charisma=100, 
                                 Insight=100, 
                                 Sensibility=100, 
                                 Will=100)
SpecLegendry$AbilityGrade <- c("L", "U", "U")
SpecLegendry$WeaponType <- "AR"
SpecLegendry$WeaponAddPGrade <- c("L", "L", "L")
SpecLegendry$WeaponAddPOp <- c("A", "A", "O")
SpecLegendry$Pets <- c("P", "D", "D")
SpecLegendry$ItemSet <- ItemSum(SpecSet2, SetOption(SpecSet2, SpecLegendry$WeaponType), PetSetOption(SpecLegendry$Pets))
SpecLegendry$CoolReduceInfo <- data.frame(MainStatP=c(0, -12), 
                                          CoolReduce=c(0, 2))
SpecLegendry$CommonVSet <- data.frame(Use=c(T, T, T, T, T, F), 
                                      Lv=c(25, 1, 1, 20, 1, 0), 
                                      row.names=c("Blink", "ErdaNova", "ErdaWill", "RopeConnect", "SpecialCore", "CrestoftheSolar"))

## SpecSet - Legendry (Zero)
SpecLegendryZero <- SpecLegendry
SpecLegendryZero$ItemSet <- ItemSum(SpecSetZero2, SetOption(SpecSetZero2, "F"), PetSetOption(SpecLegendryZero$Pets))


## SpecSet - Legendry (Xenon_A15S9 / Xenon_A15A6)
SpecLegendryXenon_A15S9 <- SpecLegendry
SpecLegendryXenon_A15S9$ItemSet <- ItemSum(SpecSetXenon2_A15S9, SetOption(SpecSetXenon2_A15S9, "AR"), PetSetOption(SpecLegendryXenon_A15S9$Pets))
SpecLegendryXenon_A15S9$CoolReduceInfo <- data.frame(AllStatP=c(0, -9), 
                                                     CoolReduce=c(0, 2))

SpecLegendryXenon_A15A6 <- SpecLegendry
SpecLegendryXenon_A15A6$ItemSet <- ItemSum(SpecSetXenon2_A15A6, SetOption(SpecSetXenon2_A15A6, "AR"), PetSetOption(SpecLegendryXenon_A15A6$Pets))
SpecLegendryXenon_A15A6$CoolReduceInfo <- data.frame(AllStatP=c(0, -9), 
                                                     CoolReduce=c(0, 2))


## SpecSet - Legendry (DemonAvenger)
SpecLegendryDemonAvenger <- SpecLegendry
SpecLegendryDemonAvenger$ItemSet <- ItemSum(SpecSetDemonAvenger2, SetOption(SpecSetDemonAvenger2, "AR"), PetSetOption(SpecLegendryDemonAvenger$Pets))





# Union PreSet Structure (WITHOUT CALCULATING CHARACTER)
# Name : Union + UnionLv
## Cols : Chrs(Numeric), MapleM(Logical), MapleMGrade(Categorical : SS, S, A, B)
## Cols : SSSChrs(Numeric), SSChrs(Numeric), SChrs(Numeric)
UnionPreSet <- list()
UnionPreSet$Union8000 <- data.frame(Chrs=35, 
                                    MapleM=T,
                                    MapleMGrade="SS",
                                    SSSChrs=0, 
                                    SSChrs=35, 
                                    SChrs=0)