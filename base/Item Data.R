## item option data
# Set Symbol : "1" : Boss, "2" : Black Boss, "3" : Chaos Root Abyss, "4" : Absolabs, "5" : Arcane Shade, "6" : Meister
# Set Symbol : "0" : None, "7" : MosterPark, "8" : Lucky, "9" : MasterLabel, "10" : Dawn, "11" : Eternal
# 12월 9일 여명 및 에테르넬 추가 / 칼리 무기도 / 칼리 보조 / 어센틱 심볼 도원경 아르테리아 카르시온 / 시드링 5렙

itemoption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "MaxHPP", "ATK", "ATKSub", 
                "MainStatP", "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "Superior", "IGR", "BDR", "CRR", "CDMR")

{Silver <- c(110, 5, 5, 5, 0, 0, 2, 2, 0, 0, 2, F, F, 1, F, 0, 0, 0, 0)
Ipia <- c(120, 5, 5, 5, 200, 0, 2, 2, 0, 0, 2, F, F, 1, F, 0, 0, 0, 0)
Meister <- c(140, 5, 5, 5, 200, 0, 1, 1, 0, 0, 1, F, F, 6, F, 0, 0, 0, 0)
DeepDark <- c(130, 20, 20, 20, 0, 1000, 20, 20, 0, 0, 0, F, F, 0, F, 0, 0, 15, 5)
Awake <- c(120, 40, 40, 40, 4000, 0, 25, 25, 0, 0, 0, F, F, 0, F, 0, 0, 0, 0)
Scarlet <- c(135, 4, 4, 4, 150, 0, 1, 1, 0, 0, 1, F, F, 8, F, 0, 0, 0, 0)
Seed <- c(110, 4, 4, 4, 0, 0, 4, 4, 0, 0, 0, F, F, 0, F, 0, 0, 0, 0)
Guadian <- c(160, 5, 5, 5, 200, 0, 2, 2, 0, 0, 2, F, F, 10, F, 0, 0, 0, 0) #12월 9일 가엔링 추가
Fear <- c(200, 5, 5, 5, 250, 0, 4, 4, 0, 0, 2, F, F, 2, F, 0, 0, 0, 0)
Ring <- rbind(Silver, Ipia, Meister, DeepDark, Awake, Scarlet, Seed, Guadian, Fear)
colnames(Ring) <- itemoption

Pink <- c(140, 5, 5, 5, 50, 0, 5, 5, 0, 0, 0, T, T, 1, F, 0, 0, 0, 0)
Grimoire <- c(160, 20, 10, 10, 100, 0, 10, 10, 0, 0, 0, T, T, 2, F, 0, 0, 0, 0)
Pocket <- rbind(Pink, Grimoire)
colnames(Pocket) <- itemoption

Dominator <- c(140, 20, 20, 20, 0, 10, 3, 3, 0, 0, 5, T, T, 1, F, 0, 0, 0, 0)
Macanator <- c(120, 10, 10, 10, 250, 0, 1, 1, 0, 0, 2, T, T, 1, F, 0, 0, 0, 0)
Daybreak <- c(140, 8, 8, 8, 0, 5, 2, 2, 0, 0, 5, T, T, 10, F, 0, 0, 0, 0) #12월 9일 데브펜 추가
Pain <- c(160, 10, 10, 10, 0, 5, 3, 3, 0, 0, 5, T, T, 2, F, 0, 0, 0, 0)
Purple <- c(130, 16, 0, 0, 180, 0, 0, 0, 0, 0, 3, T, F, 0, F, 0, 0, 0, 0)
ChaosHorntail <- c(120, 10, 10, 10, 0, 10, 2, 2, 0, 0, 3, T, F, 1, F, 0, 0, 0, 0)
Pendant <- rbind(Dominator, Macanator, Daybreak, Pain, Purple, ChaosHorntail)
colnames(Pendant) <- itemoption

Zakum <- c(150, 18, 18, 18, 150, 0, 1, 1, 0, 0, 3, T, T, 1, F, 0, 0, 0, 0)
Tyrant <- c(150, 50, 50, 50, 0, 0, 25, 25, 0, 0, 1, T, T, 0, T, 0, 0, 0, 0)
Dream <- c(200, 50, 50, 50, 150, 0, 6, 6, 0, 0, 3, T, T, 2, F, 0, 0, 0, 0)
Belt <- rbind(Zakum, Tyrant, Dream)
colnames(Belt) <- itemoption

Vellum <- c(140, 23, 23, 23, 0, 0, 1, 1, 0, 0, 11, T, F, 8, F, 0, 0, 0, 0)
Fafnir <- c(150, 40, 40, 0, 360, 0, 2, 0, 0, 0, 11, T, T, 3, F, 10, 0, 0, 0)
Absolabs <- c(160, 45, 45, 0, 0, 0, 3, 0, 0, 0, 11, T, T, 4, F, 10, 0, 0, 0)
Arcane <- c(200, 65, 65, 0, 0, 0, 7, 0, 0, 0, 11, T, T, 5, F, 10, 0, 0, 0)
Eternal <- c(250, 90, 90, 0, 0, 0, 7, 0, 0, 0, 11, T, T, 5, F, 10, 0, 0, 0)
Hat <- rbind(Vellum, Fafnir, Absolabs, Arcane, Eternal)
colnames(Hat) <- itemoption

Condensed <- c(110, 5, 5, 5, 0, 0, 5, 5, 0, 0, 5, T, T, 1, F, 0, 0, 0, 0)
Twilight <- c(140, 5, 5, 5, 0, 0, 5, 5, 0, 0, 3, T, T, 10, F, 0, 0, 0, 0)
LCMM <- c(160, 10, 10, 10, 0, 0, 10, 10, 0, 0, 5, T, T, 2, F, 0, 0, 0, 0)
ShinyRed <- c(130, 3, 3, 0, 0, 0, 3, 3, 0, 0, 1, T, F, 0, F, 0, 0, 0, 0)
Forehead <- rbind(Condensed, Twilight, LCMM, ShinyRed)
colnames(Forehead) <- itemoption

Aquatic <- c(100, 6, 6, 6, 0, 0, 1, 1, 0, 0, 3, T, T, 1, F, 0, 0, 0, 0)
Blackbean <- c(135, 7, 7, 7, 0, 0, 1, 1, 0, 0, 5, T, T, 1, F, 0, 0, 0, 0)
Papulatus <- c(145, 8, 8, 8, 0, 0, 1, 1, 0, 0, 5, T, T, 1, F, 0, 0, 0, 0)
Demian <- c(160, 15, 15, 15, 0, 0, 3, 3, 0, 0, 3, T, T, 2, F, 0, 0, 0, 0)
Eyeacc <- rbind(Aquatic, Blackbean, Papulatus, Demian)
colnames(Eyeacc) <- itemoption

Fafnir <- c(150, 30, 30, 0, 0, 0, 2, 0, 0, 0, 7, T, T, 3, F, 5, 0, 0, 0)
Eternal<- c(200, 50, 50, 0, 0, 0, 6, 0, 0, 0, 7, T, T, 11, F, 5, 0, 0, 0)
Clothes <- rbind(Fafnir, Eternal)
colnames(Clothes) <- itemoption
Pants <- rbind(Fafnir, Eternal)
colnames(Pants) <- itemoption

Absolabs <- c(160, 20, 20, 0, 0, 0, 5, 0, 0, 0, 7, T, T, 4, F, 0, 0, 0, 0)
Arcane <- c(200, 40, 40, 0, 0, 0, 9, 0, 0, 0, 7, T, T, 5, F, 0, 0, 0, 0)
Shoes <- rbind(Absolabs, Arcane)
colnames(Shoes) <- itemoption

Thea <- c(130, 5, 5, 5, 0, 0, 2, 2, 0, 0, 6, T, T, 1, F, 0, 0, 0, 0)
Ocean <- c(150, 7, 7, 7, 750, 0, 5, 5, 0, 0, 7, T, T, 0, F, 0, 0, 0, 0)
Commander <- c(200, 7, 7, 7, 500, 0, 5, 5, 0, 0, 6, T, T, 2, F, 0, 0, 0, 0)
Meister <- c(140, 5, 5, 5, 500, 0, 4, 4, 0, 0, 6, T, T, 6, F, 0, 0, 0, 0)
Estella <- c(160, 7, 7, 7, 300, 0, 2, 2, 0, 0, 6, T, T, 10, F, 0, 0, 0, 0)
Earings <- rbind(Thea, Ocean, Commander, Meister, Estella)
colnames(Earings) <- itemoption

Absolabs <- c(160, 14, 14, 14, 0, 0, 10, 10, 0, 0, 1, F, F, 4, F, 0, 0, 0, 0)
Arcane <- c(200, 35, 35, 35, 0, 0, 20, 20, 0, 0, 1, F, F, 5, F, 0, 0, 0, 0)
Eternal<- c(200, 51, 51, 51, 0, 0, 28, 0, 0, 0, 1, F, F, 11, F, 0, 0, 0, 0)
Shoulder <- rbind(Absolabs, Arcane, Eternal)
colnames(Shoulder) <- itemoption

Absolabs <- c(160, 20, 20, 0, 0, 0, 5, 0, 0, 0, 7, T, T, 4, F, 0, 0, 0, 0)
Arcane <- c(200, 40, 40, 0, 0, 0, 9, 0, 0, 0, 7, T, T, 5, F, 0, 0, 0, 0)
Gloves <- rbind(Absolabs, Arcane)
colnames(Gloves) <- itemoption

Crystal <- c(130, 10, 10, 10, 0, 0, 5, 5, 0, 0, 0, F, F, 1, F, 0, 0, 0, 0)
MonsterPark <- c(100, 7, 7, 7, 0, 0, 7, 7, 0, 0, 0, F, F, 7, F, 10, 0, 0, 0)
Creation <- c(200, 15, 15, 15, 0, 0, 10, 10, 0, 0, 0, F, F, 6, F, 0, 0, 0, 0)
Badge <- rbind(Crystal, MonsterPark, Creation)
colnames(Badge) <- itemoption

MonsterPark <- c(100, 7, 7, 7, 0, 0, 7, 7, 0, 0, 0, F, F, 7, F, 10, 0, 0, 0)
Red <- c(0, 7, 7, 7, 0, 0, 7, 7, 0, 0, 0, F, F, 0, F, 0, 5, 0, 0)
VellumKiller <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, F, 0, 5, 0, 0)
Medal <- rbind(MonsterPark, Red, VellumKiller)
colnames(Medal) <- itemoption

Absolabs <- c(160, 15, 15, 15, 0, 0, 2, 2, 0, 0, 7, T, T, 4, F, 0, 0, 0, 0)
Arcane <- c(200, 35, 35, 35, 0, 0, 6, 6, 0, 0, 7, T, T, 5, F, 0, 0, 0, 0)
Cape <- rbind(Absolabs, Arcane)
colnames(Cape) <- itemoption

Titanium <- c(100, 3, 3, 3, 50, 0, 0, 0, 0, 0, 9, F, F, 0, F, 0, 0, 0, 0)
LiquidMetal <- c(130, 3, 3, 3, 50, 0, 0, 0, 0, 0, 9, F, F, 0, F, 0, 0, 0, 0)
Black <- c(120, 50, 50, 50, 100, 0, 77, 0, 0, 0, 0, F, F, 2, F, 30, 30, 0, 0)
Heart <- rbind(Titanium, LiquidMetal, Black)
colnames(Heart) <- itemoption

CrystalKey <- c(0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 8, F, F, 0, F, 0, 0, 0, 0) 
Dream <- c(0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 9, F, F, 0, F, 0, 0, 0, 0)
PetEqip <- rbind(CrystalKey, Dream)
colnames(PetEqip) <- itemoption ## GoldenHammer Unavailable

RootAbyss <- c(0, 8, 8, 8, 300, 0, 3, 3, 0, 0, 0, F, F, 0, F, 5, 5, 0, 0)
PinkBean <- c(0, 10, 10, 10, 0, 0, 5, 5, 0, 0, 0, F, F, 0, F, 0, 10, 0, 0)
MapleExpert <- c(0, 10, 10, 10, 0, 0, 5, 5, 0, 0, 0, F, F, 0, F, 10, 0, 0, 0)
YePink <- c(0, 20, 20, 20, 0, 0, 10, 10, 0, 0, 0, F, F, 0, F, 0, 10, 0, 0)
Title <- rbind(MapleExpert, RootAbyss, PinkBean, YePink)
colnames(Title) <- itemoption

MasterLabelWeapon <- c(0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, F, F, 9, F, 0, 0, 0, 0)
MasterLabelClothes <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 9, F, 0, 0, 0, 0)
MasterLabelCape <- c(0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 9, F, 0, 0, 0, 0)
MasterLabelShoes <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 9, F, 0, 0, 0, 0)
MasterLabelHat <- c(0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 9, F, 0, 0, 0, 0)
MasterLabel <- rbind(MasterLabelWeapon, MasterLabelClothes, MasterLabelCape, MasterLabelShoes, MasterLabelHat)
colnames(MasterLabel) <- itemoption}

item <- list(Ring, Pocket, Pendant, Belt, Hat, Forehead, Eyeacc, Clothes, Pants, 
             Shoes, Earings, Shoulder, Gloves, Badge, Medal, Cape, Heart, PetEqip, Title, MasterLabel)

#12월 3일 여기까지..

## Item List
Items <- c("Ring1", "Ring2", "Ring3", "Ring4", "Pocket", "Pendant1", "Pendant2", "Belt",
           "Hat", "Forehead", "Eyeacc", "Clothes", "Pants", "Shoes", "Earings", "Shoulder", 
           "Gloves", "Badge", "Medal", "Cape", "Heart", "PetEqip1", "PetEqip2", "PetEqip3", "Title", 
           "MasterLabel1", "MasterLabel2", "MasterLabel3", "MasterLabel4", "MasterLabel5")

##기준 스펙 및 템세팅 - 12월 4일 기준 완전 개편..
##StandardSpecs / StandardSpecZero / StandardSpecDemonAvenger / LegendrySpecs / LegendrySpecsZero / LegendrySpecsDemonAvenger 삭제
##Newbie / Middle / UpperMiddle / UpperMiddleArcane / High / Top / Middle444 / UpperMiddle444 / High444 / NewbieDA / MiddleDA / UpperMiddleDA / UpperMiddleArcaneDA / HighDA / TopDA / EndSpec 추가

#Newbie - 12성 9/10 9보장 1앜 2카 5앱 / 미해방 - 완
{Newbie <- rbind(item[[1]][1, ], item[[1]][2, ], item[[1]][5, ], item[[1]][5, ],
                 item[[2]][1, ], item[[3]][1, ], item[[3]][2, ], item[[4]][1, ],
                 item[[5]][3, ], item[[6]][1, ], item[[7]][1, ], item[[8]][1, ],
                 item[[9]][1, ], item[[10]][1, ], item[[11]][1, ], item[[12]][1, ],
                 item[[13]][1, ], item[[14]][1, ], item[[15]][3, ], item[[16]][1, ],
                 item[[17]][1, ], item[[18]][2, ], item[[18]][2, ], item[[18]][2, ],
                 item[[19]][1, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
                 item[[20]][4, ], item[[20]][5, ])
  
#Middle - 17성 15/4 10 7보장 1앜 2카 5앱 / 미해방 - 완
Middle <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][5, ], item[[1]][7, ],
                item[[2]][1, ], item[[3]][1, ], item[[3]][2, ], item[[4]][1, ],
                item[[5]][3, ], item[[6]][2, ], item[[7]][2, ], item[[8]][1, ],
                item[[9]][1, ], item[[10]][1, ], item[[11]][1, ], item[[12]][1, ],
                item[[13]][1, ], item[[14]][1, ], item[[15]][3, ], item[[16]][1, ],
                item[[17]][1, ], item[[18]][2, ], item[[18]][2, ], item[[18]][2, ],
                item[[19]][1, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
                item[[20]][4, ], item[[20]][5, ])

#UpperMiddle - 18성 21/4 10 5보장 2여명 1앜 2카 5앱 / 미해방 - 완
UpperMiddle <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][5, ], item[[1]][7, ],
                     item[[2]][1, ], item[[3]][1, ], item[[3]][5, ], item[[4]][2, ],
                     item[[5]][3, ], item[[6]][2, ], item[[7]][2, ], item[[8]][1, ],
                     item[[9]][1, ], item[[10]][1, ], item[[11]][5, ], item[[12]][1, ],
                     item[[13]][1, ], item[[14]][1, ], item[[15]][1, ], item[[16]][1, ],
                     item[[17]][1, ], item[[18]][1, ], item[[18]][2, ], item[[18]][2, ],
                     item[[19]][2, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
                     item[[20]][4, ], item[[20]][5, ])

#UpperMiddleArcane - 18성 21/4 10 5보장 2여명 3카 5앜 / 미해방 - 완
UpperMiddleArcane <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][5, ], item[[1]][7, ],
                     item[[2]][1, ], item[[3]][1, ], item[[3]][5, ], item[[4]][2, ],
                     item[[5]][3, ], item[[6]][2, ], item[[7]][2, ], item[[8]][1, ],
                     item[[9]][1, ], item[[10]][2, ], item[[11]][5, ], item[[12]][2, ],
                     item[[13]][2, ], item[[14]][1, ], item[[15]][1, ], item[[16]][2, ],
                     item[[17]][1, ], item[[18]][1, ], item[[18]][2, ], item[[18]][2, ],
                     item[[19]][2, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
                     item[[20]][4, ], item[[20]][5, ])

#High - 22성 27/4 10 3보장 4여명 4카 5앱 / 해방 - 완
High <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][8, ], item[[1]][7, ],
              item[[2]][1, ], item[[3]][1, ], item[[3]][3, ], item[[4]][2, ],
              item[[5]][2, ], item[[6]][2, ], item[[7]][3, ], item[[8]][1, ],
              item[[9]][1, ], item[[10]][1, ], item[[11]][5, ], item[[12]][1, ],
              item[[13]][1, ], item[[14]][1, ], item[[15]][1, ], item[[16]][1, ],
              item[[17]][1, ], item[[18]][1, ], item[[18]][2, ], item[[18]][2, ],
              item[[19]][4, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
              item[[20]][4, ], item[[20]][5, ])

#Top - 22성 30/8 6 2여명 4칠흑 4카 5앜 / 해방 - 완
Top <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][8, ], item[[1]][7, ],
             item[[2]][2, ], item[[3]][1, ], item[[3]][3, ], item[[4]][2, ],
             item[[5]][2, ], item[[6]][3, ], item[[7]][4, ], item[[8]][1, ],
             item[[9]][1, ], item[[10]][2, ], item[[11]][5, ], item[[12]][2, ],
             item[[13]][2, ], item[[14]][2, ], item[[15]][1, ], item[[16]][2, ],
             item[[17]][3, ], item[[18]][1, ], item[[18]][1, ], item[[18]][1, ],
             item[[19]][4, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
             item[[20]][4, ], item[[20]][5, ])

#Middle444 - 444 중급자 버전 / 미해방 - 완
Middle444 <- rbind(item[[1]][3, ], item[[1]][5, ], item[[1]][5, ], item[[1]][7, ],
                   item[[2]][1, ], item[[3]][1, ], item[[3]][2, ], item[[4]][1, ],
                   item[[5]][1, ], item[[6]][2, ], item[[7]][2, ], item[[8]][1, ],
                   item[[9]][1, ], item[[10]][1, ], item[[11]][4, ], item[[12]][1, ],
                   item[[13]][1, ], item[[14]][1, ], item[[15]][3, ], item[[16]][1, ],
                   item[[17]][1, ], item[[18]][2, ], item[[18]][2, ], item[[18]][2, ],
                   item[[19]][1, ], item[[20]][1, ], item[[20]][2, ], item[[20]][3, ],
                   item[[20]][4, ], item[[20]][5, ])

#UpperMiddle444 - 444 중상급자 앱솔 버전 / 미해방 - 완
UpperMiddle444 <- rbind(item[[1]][3, ],
                        item[[1]][5, ],
                        item[[1]][5, ],
                        item[[1]][7, ],
                        item[[2]][1, ],
                        item[[3]][1, ],
                        item[[3]][5, ],
                        item[[4]][2, ],
                        item[[5]][1, ],
                        item[[6]][2, ],
                        item[[7]][2, ],
                        item[[8]][1, ],
                        item[[9]][1, ],
                        item[[10]][1, ],
                        item[[11]][4, ],
                        item[[12]][1, ],
                        item[[13]][1, ],
                        item[[14]][1, ],
                        item[[15]][1, ],
                        item[[16]][1, ],
                        item[[17]][1, ],
                        item[[18]][1, ],
                        item[[18]][2, ],
                        item[[18]][2, ],
                        item[[19]][2, ],
                        item[[20]][1, ],
                        item[[20]][2, ],
                        item[[20]][3, ],
                        item[[20]][4, ],
                        item[[20]][5, ])

#High444 - 444 상급자 버전 / 미해방 - 완
High444 <- rbind(item[[1]][3, ],
                 item[[1]][5, ],
                 item[[1]][8, ],
                 item[[1]][7, ],
                 item[[2]][1, ],
                 item[[3]][1, ],
                 item[[3]][3, ],
                 item[[4]][2, ],
                 item[[5]][1, ],
                 item[[6]][2, ],
                 item[[7]][3, ],
                 item[[8]][1, ],
                 item[[9]][1, ],
                 item[[10]][1, ],
                 item[[11]][4, ],
                 item[[12]][1, ],
                 item[[13]][1, ],
                 item[[14]][1, ],
                 item[[15]][1, ],
                 item[[16]][1, ],
                 item[[17]][1, ],
                 item[[18]][1, ],
                 item[[18]][2, ],
                 item[[18]][2, ],
                 item[[19]][4, ],
                 item[[20]][1, ],
                 item[[20]][2, ],
                 item[[20]][3, ],
                 item[[20]][4, ],
                 item[[20]][5, ])

#NewbieDA - 데벤 뉴비 버전 - 완
NewbieDA <- rbind(item[[1]][1, ],
                  item[[1]][1, ],
                  item[[1]][5, ],
                  item[[1]][5, ],
                  item[[2]][1, ],
                  item[[3]][1, ],
                  item[[3]][6, ],
                  item[[4]][1, ],
                  item[[5]][3, ],
                  item[[6]][1, ],
                  item[[7]][1, ],
                  item[[8]][1, ],
                  item[[9]][1, ],
                  item[[10]][1, ],
                  item[[11]][1, ],
                  item[[12]][1, ],
                  item[[13]][1, ],
                  item[[14]][1, ],
                  item[[15]][3, ],
                  item[[16]][1, ],
                  item[[17]][1, ],
                  item[[18]][2, ],
                  item[[18]][2, ],
                  item[[18]][2, ],
                  item[[19]][1, ],
                  item[[20]][1, ],
                  item[[20]][2, ],
                  item[[20]][3, ],
                  item[[20]][4, ],
                  item[[20]][5, ])

#MiddleDA - 데벤 중급자 버전 - 완
MiddleDA <- rbind(item[[1]][2, ],
                  item[[1]][3, ],
                  item[[1]][5, ],
                  item[[1]][7, ],
                  item[[2]][1, ],
                  item[[3]][1, ],
                  item[[3]][6, ],
                  item[[4]][1, ],
                  item[[5]][3, ],
                  item[[6]][2, ],
                  item[[7]][2, ],
                  item[[8]][1, ],
                  item[[9]][1, ],
                  item[[10]][1, ],
                  item[[11]][2, ],
                  item[[12]][1, ],
                  item[[13]][1, ],
                  item[[14]][1, ],
                  item[[15]][3, ],
                  item[[16]][1, ],
                  item[[17]][1, ],
                  item[[18]][2, ],
                  item[[18]][2, ],
                  item[[18]][2, ],
                  item[[19]][1, ],
                  item[[20]][1, ],
                  item[[20]][2, ],
                  item[[20]][3, ],
                  item[[20]][4, ],
                  item[[20]][5, ])

#UpperMiddleDA - 데벤 중상급자 앱솔 버전 - 완
UpperMiddleDA <- rbind(item[[1]][3, ],
                       item[[1]][8, ],
                       item[[1]][5, ],
                       item[[1]][7, ],
                       item[[2]][1, ],
                       item[[3]][1, ],
                       item[[3]][3, ],
                       item[[4]][1, ],
                       item[[5]][3, ],
                       item[[6]][2, ],
                       item[[7]][2, ],
                       item[[8]][1, ],
                       item[[9]][1, ],
                       item[[10]][1, ],
                       item[[11]][5, ],
                       item[[12]][1, ],
                       item[[13]][1, ],
                       item[[14]][1, ],
                       item[[15]][1, ],
                       item[[16]][1, ],
                       item[[17]][1, ],
                       item[[18]][1, ],
                       item[[18]][2, ],
                       item[[18]][2, ],
                       item[[19]][1, ],
                       item[[20]][1, ],
                       item[[20]][2, ],
                       item[[20]][3, ],
                       item[[20]][4, ],
                       item[[20]][5, ])

#UpperMiddleArcaneDA - 데벤 중상급자 아케인 버전 - 완
UpperMiddleArcaneDA <- rbind(item[[1]][3, ],
                             item[[1]][8, ],
                             item[[1]][5, ],
                             item[[1]][7, ],
                             item[[2]][1, ],
                             item[[3]][1, ],
                             item[[3]][3, ],
                             item[[4]][1, ],
                             item[[5]][2, ],
                             item[[6]][2, ],
                             item[[7]][2, ],
                             item[[8]][1, ],
                             item[[9]][1, ],
                             item[[10]][2, ],
                             item[[11]][5, ],
                             item[[12]][2, ],
                             item[[13]][2, ],
                             item[[14]][1, ],
                             item[[15]][1, ],
                             item[[16]][2, ],
                             item[[17]][1, ],
                             item[[18]][1, ],
                             item[[18]][2, ],
                             item[[18]][2, ],
                             item[[19]][1, ],
                             item[[20]][1, ],
                             item[[20]][2, ],
                             item[[20]][3, ],
                             item[[20]][4, ],
                             item[[20]][5, ])

#HighDA - 데벤 상급자 버전 / 해방 - 완
HighDA <- rbind(item[[1]][3, ],
                item[[1]][8, ],
                item[[1]][5, ],
                item[[1]][7, ],
                item[[2]][1, ],
                item[[3]][1, ],
                item[[3]][3, ],
                item[[4]][1, ],
                item[[5]][2, ],
                item[[6]][2, ],
                item[[7]][3, ],
                item[[8]][1, ],
                item[[9]][1, ],
                item[[10]][1, ],
                item[[11]][4, ],
                item[[12]][1, ],
                item[[13]][1, ],
                item[[14]][1, ],
                item[[15]][1, ],
                item[[16]][1, ],
                item[[17]][1, ],
                item[[18]][1, ],
                item[[18]][2, ],
                item[[18]][2, ],
                item[[19]][4, ],
                item[[20]][1, ],
                item[[20]][2, ],
                item[[20]][3, ],
                item[[20]][4, ],
                item[[20]][5, ])

#TopDA - 데벤 최상급자 버전 / 해방 - 완
TopDA <- rbind(item[[1]][3, ],
               item[[1]][8, ],
               item[[1]][5, ],
               item[[1]][7, ],
               item[[2]][2, ],
               item[[3]][1, ],
               item[[3]][3, ],
               item[[4]][1, ],
               item[[5]][2, ],
               item[[6]][3, ],
               item[[7]][4, ],
               item[[8]][1, ],
               item[[9]][1, ],
               item[[10]][2, ],
               item[[11]][4, ],
               item[[12]][2, ],
               item[[13]][2, ],
               item[[14]][2, ],
               item[[15]][1, ],
               item[[16]][2, ],
               item[[17]][3, ],
               item[[18]][1, ],
               item[[18]][2, ],
               item[[18]][2, ],
               item[[19]][4, ],
               item[[20]][1, ],
               item[[20]][2, ],
               item[[20]][3, ],
               item[[20]][4, ],
               item[[20]][5, ])

#EndSpec - 이론상 최강 스펙 / 해방 - 완
EndSpec <- rbind(item[[1]][3, ],
                 item[[1]][8, ],
                 item[[1]][9, ],
                 item[[1]][7, ],
                 item[[2]][2, ],
                 item[[3]][3, ],
                 item[[3]][4, ],
                 item[[4]][3, ],
                 item[[5]][5, ],
                 item[[6]][3, ],
                 item[[7]][4, ],
                 item[[8]][2, ],
                 item[[9]][2, ],
                 item[[10]][2, ],
                 item[[11]][3, ],
                 item[[12]][3, ],
                 item[[13]][2, ],
                 item[[14]][2, ],
                 item[[15]][1, ],
                 item[[16]][2, ],
                 item[[17]][3, ],
                 item[[18]][1, ],
                 item[[18]][1, ],
                 item[[18]][1, ],
                 item[[19]][4, ],
                 item[[20]][1, ],
                 item[[20]][2, ],
                 item[[20]][3, ],
                 item[[20]][4, ],
                 item[[20]][5, ])}

rownames(Newbie) <- Items
rownames(Middle) <- Items
rownames(UpperMiddle) <- Items
rownames(UpperMiddleArcane) <- Items
rownames(High) <- Items
rownames(Top) <- Items
rownames(Middle444) <- Items
rownames(UpperMiddle444) <- Items
rownames(High444) <- Items
rownames(NewbieDA) <- Items
rownames(MiddleDA) <- Items
rownames(UpperMiddleDA) <- Items
rownames(UpperMiddleArcaneDA) <- Items
rownames(HighDA) <- Items
rownames(TopDA) <- Items
rownames(EndSpec) <- Items
#여기 원래 뭐 없었나? 안 되면 찾아보자.. 10월 17일 여기까지 완

## Fafnir
weaponoption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "ATK", "ATKSub", 
                  "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "IGR", "BDR", "CRR", "CDMR", 
                  "ATKSpeed", "Hand", "WeaponConstant")
{Sword <- c(150, 40, 40, 0, 0, 164, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 1, 1.2)
Hammer <- c(150, 40, 40, 0, 0, 164, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 1, 1.2)
TwohandSword <- c(150, 40, 40, 0, 0, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.34)
TwohandAxe <- c(150, 40, 40, 0, 0, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.34)
TwohandHammer <- c(150, 40, 40, 0, 0, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.34)
Polarm <- c(150, 40, 40, 0, 0, 153, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 2, 1.49)
Spear <- c(150, 40, 40, 0, 0, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.49)
GuntletRevolver <- c(150, 40, 40, 0, 0, 128, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 2, 1.7)
Desperado <- c(150, 0, 40, 0, 2000, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1.3)
Tuner <- c(150, 40, 40, 0, 0, 171, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 1, 1.3) # WeaponConstant Need to be Checked
LongSword <- c(170, 40, 40, 0, 0, 169, 0, 0, 8, T, F, 8, 10, 30, 0, 0, 6, 2, 1.34) # ZeroWeapon
HeavySword <- c(170, 40, 40, 0, 0, 173, 0, 0, 8, T, F, 8, 10, 30, 0, 0, 8, 2, 1.49) # ZeroWeapon
Staff <- c(150, 40, 40, 0, 0, 204, 126, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1)
Wand <- c(150, 40, 40, 0, 0, 201, 119, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1)
ShiningLord <- c(150, 40, 40, 0, 0, 201, 119, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1.2)
MagicGuntlet <- c(150, 40, 40, 0, 0, 201, 119, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1.2)
ESPLimiter <- c(150, 40, 40, 0, 0, 201, 119, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 1, 1.2)
Bow <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.3)
Crossbow <- c(150, 40, 40, 0, 0, 164, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.35)
AncientBow <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.3)
DualBowgun <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 6, 2, 1.3)
BreathShooter <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 2, 1.3)
Wristband <- c(150, 40, 40, 0, 0, 86, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 2, 1.75)
Dagger <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 1, 1.3)
Cane <- c(150, 40, 40, 0, 0, 164, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 1, 1.3)
Chain <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 1, 1.3)
Fan <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 1, 1.3)
Gun <- c(150, 40, 40, 0, 0, 125, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 2, 1.5)
Knuckle <- c(150, 40, 40, 0, 0, 128, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 2, 1.7)
HandCannon <- c(150, 40, 40, 0, 0, 175, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 8, 2, 1.5)
EnergySword <- c(150, 40, 40, 0, 0, 128, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 1, 1.5)
SoulShooter <- c(150, 40, 40, 0, 0, 128, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 5, 1, 1.7)
Chakram <- c(150, 40, 40, 0, 0, 160, 0, 0, 8, T, T, 3, 10, 30, 0, 0, 4, 1, 1.3)}
Fafnir <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                Tuner, LongSword, HeavySword, 
                Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
                Wristband, Dagger, Cane, Chain, Fan,
                Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(Fafnir) <- weaponoption


## Absolabs
{Sword <- c(160, 60, 60, 0, 0, 197, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 1, 1.2)
Hammer <- c(160, 60, 60, 0, 0, 197, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 1, 1.2)
TwohandSword <- c(160, 60, 60, 0, 0, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.34)
TwohandAxe <- c(160, 60, 60, 0, 0, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.34)
TwohandHammer <- c(160, 60, 60, 0, 0, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.34)
Polarm <- c(160, 60, 60, 0, 0, 184, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 2, 1.49)
Spear <- c(160, 60, 60, 0, 0, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.49)
GuntletRevolver <- c(160, 60, 60, 0, 0, 154, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 2, 1.70)
Desperado <- c(160, 0, 60, 0, 2250, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1.3)
Tuner <- c(160, 60, 60, 0, 0, 205, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 1, 1.3) # WeaponConstant Need to be Checked
LongSword <- c(180, 60, 60, 0, 0, 203, 0, 0, 8, T, F, 8, 10, 30, 0, 0, 6, 2, 1.34) # ZeroWeapon
HeavySword <- c(180, 60, 60, 0, 0, 207, 0, 0, 8, T, F, 8, 10, 30, 0, 0, 8, 2, 1.49) # ZeroWeapon
Staff <- c(160, 60, 60, 0, 0, 245, 151, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1)
Wand <- c(160, 60, 60, 0, 0, 241, 143, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1)
ShiningLord <- c(160, 60, 60, 0, 0, 241, 143, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1.2)
MagicGuntlet <- c(160, 60, 60, 0, 0, 241, 143, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1.2)
ESPLimiter <- c(160, 60, 60, 0, 0, 241, 143, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 1, 1.2)
Bow <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.3)
Crossbow <- c(160, 60, 60, 0, 0, 197, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.35)
AncientBow <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.3)
DualBowgun <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 6, 2, 1.3)
BreathShooter <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 2, 1.3)
Wristband <- c(160, 60, 60, 0, 0, 103, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 2, 1.75)
Dagger <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 1, 1.3)
Cane <- c(160, 60, 60, 0, 0, 197, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 1, 1.3)
Chain <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 1, 1.3)
Fan <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 1, 1.3)
Gun <- c(160, 60, 60, 0, 0, 150, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 2, 1.5)
Knuckle <- c(160, 60, 60, 0, 0, 154, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 2, 1.7)
HandCannon <- c(160, 60, 60, 0, 0, 210, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 8, 2, 1.5)
EnergySword <- c(160, 60, 60, 0, 0, 154, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 1, 1.5)
SoulShooter <- c(160, 60, 60, 0, 0, 154, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 5, 1, 1.7)
Chakram <- c(160, 60, 60, 0, 0, 192, 0, 0, 8, T, T, 4, 10, 30, 0, 0, 4, 1, 1.3)}
Absolabs <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                  Tuner, LongSword, HeavySword, 
                  Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                  Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
                  Wristband, Dagger, Cane, Chain, Fan,
                  Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(Absolabs) <- weaponoption


## ArcaneShade
{Sword <- c(200, 100, 100, 0, 0, 283, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 1, 1.2)
Hammer <- c(200, 100, 100, 0, 0, 283, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 1, 1.2)
TwohandSword <- c(200, 100, 100, 0, 0, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.34)
TwohandAxe <- c(200, 100, 100, 0, 0, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.34)
TwohandHammer <- c(200, 100, 100, 0, 0, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.34)
Polarm <- c(200, 100, 100, 0, 0, 264, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 2, 1.49)
Spear <- c(200, 100, 100, 0, 0, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.49)
GuntletRevolver <- c(200, 100, 100, 0, 0, 221, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 2, 1.7)
Desperado <- c(200, 0, 100, 0, 2500, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1.3)
Tuner <- c(200, 100, 100, 0, 0, 295, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 1, 1.3) # WeaponConstant Need to be Checked
LongSword <- c(200, 100, 100, 0, 0, 293, 0, 0, 8, T, F, 8, 20, 30, 0, 0, 6, 2, 1.34) # ZeroWeapon
HeavySword <- c(200, 100, 100, 0, 0, 297, 0, 0, 8, T, F, 8, 20, 30, 0, 0, 8, 2, 1.49) # ZeroWeapon
Staff <- c(200, 100, 100, 0, 0, 353, 218, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1)
Wand <- c(200, 100, 100, 0, 0, 347, 206, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1)
ShiningLord <- c(200, 100, 100, 0, 0, 347, 206, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1.2)
MagicGuntlet <- c(200, 100, 100, 0, 0, 347, 206, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1.2)
ESPLimiter <- c(200, 100, 100, 0, 0, 347, 206, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 1, 1.2)
Bow <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.3)
Crossbow <- c(200, 100, 100, 0, 0, 283, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.35)
AncientBow <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.3)
DualBowgun <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 6, 2, 1.3)
BreathShooter <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 2, 1.3)
Wristband <-c(200, 100, 100, 0, 0, 149, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 2, 1.75)
Dagger <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 1, 1.3)
Cane <- c(200, 100, 100, 0, 0, 283, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 1, 1.3)
Chain <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 1, 1.3)
Fan <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 1, 1.3)
Gun <- c(200, 100, 100, 0, 0, 216, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 2, 1.5)
Knuckle <- c(200, 100, 100, 0, 0, 221, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 2, 1.7)
HandCannon <- c(200, 100, 100, 0, 0, 302, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 8, 2, 1.5)
EnergySword <- c(200, 100, 100, 0, 0, 221, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 1, 1.5)
SoulShooter <- c(200, 100, 100, 0, 0, 221, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 5, 1, 1.7)
Chakram <- c(200, 100, 100, 0, 0, 276, 0, 0, 8, T, T, 5, 20, 30, 0, 0, 4, 1, 1.3)}
ArcaneShade <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                     Tuner, LongSword, HeavySword, 
                     Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                     Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
                     Wristband, Dagger, Cane, Chain, Fan,
                     Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(ArcaneShade) <- weaponoption

## Genesis
{Sword <- c(200, 150, 150, 0, 0, 326, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 1, 1.2)
Hammer <- c(200, 150, 150, 0, 0, 326, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 1, 1.2)
TwohandSword <- c(200, 150, 150, 0, 0, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.34)
TwohandAxe <- c(200, 150, 150, 0, 0, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.34)
TwohandHammer <- c(200, 150, 150, 0, 0, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.34)
Polarm <- c(200, 100, 100, 0, 0, 264, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 2, 1.49)
Spear <- c(200, 150, 150, 0, 0, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.34)
GuntletRevolver <- c(200, 150, 150, 0, 0, 255, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 2, 1.7)
Desperado <- c(200, 0, 150, 0, 2800, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.3)
Tuner <- c(200, 150, 150, 0, 0, 340, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 1, 1.3) # WeaponConstant Need to be Checked
LongSword <- c(200, 150, 150, 0, 0, 337, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.34) # ZeroWeapon
HeavySword <- c(200, 150, 150, 0, 0, 342, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 8, 2, 1.34) # ZeroWeapon
Staff <- c(200, 150, 150, 0, 0, 406, 251, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 1, 1)
Wand <- c(200, 150, 150, 0, 0, 400, 237, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 1, 1)
ShiningLord <- c(200, 150, 150, 0, 0, 400, 237, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 1, 1.2)
MagicGuntlet <- c(200, 150, 150, 0, 0, 400, 237, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 1, 1.2)
ESPLimiter <- c(200, 150, 150, 0, 0, 400, 237, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 1, 1.2)
Bow <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.3)
Crossbow <- c(200, 150, 150, 0, 0, 326, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.35)
AncientBow <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.3)
DualBowgun <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 6, 2, 1.3)
BreathShooter <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 2, 1.3)
Wristband <-c(200, 150, 150, 0, 0, 172, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 2, 1.75)
Dagger <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 1, 1.3)
Cane <- c(200, 150, 150, 0, 0, 326, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 1, 1.3)
Chain <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 1, 1.3)
Fan <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 1, 1.3)
Gun <- c(200, 150, 150, 0, 0, 249, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 2, 1.5)
Knuckle <- c(200, 150, 150, 0, 0, 255, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 2, 1.7)
HandCannon <- c(200, 150, 150, 0, 0, 348, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 8, 2, 1.5)
EnergySword <- c(200, 150, 150, 0, 0, 255, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 1, 1.5)
SoulShooter <- c(200, 150, 150, 0, 0, 255, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 5, 1, 1.7)
Chakram <- c(200, 150, 150, 0, 0, 318, 0, 0, 8, T, T, 8, 20, 30, 0, 0, 4, 1, 1.3)}
Genesis <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                     Tuner, LongSword, HeavySword, 
                     Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                     Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
                     Wristband, Dagger, Cane, Chain, Fan,
                     Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(Genesis) <- weaponoption

## Weapon Addoption
### Tier 4 - 2추
{rm(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
   Tuner, LongSword, HeavySword, 
   Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
   Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
   Wristband, Dagger, Cane, Chain, Fan,
   Gun, Knuckle, HandCannon, EnergySword, SoulShooter)
Sword <- c(53, 79, 136, 157)
Hammer <- c(53, 79, 136, 157)
TwohandSword <- c(55, 82, 142, 164)
TwohandAxe <- c(55, 82, 142, 164)
TwohandHammer <- c(55, 82, 142, 164)
Polarm <- c(49, 74, 127, 146)
Spear <- c(55, 82, 142, 164)
GuntletRevolver <- c(41, 62, 106, 123)
Desperado <- c(55, 82, 142, 164)
Tuner <- c(55, 82, 142, 164)
LongSword <- c(47, 56, 95, 110)
HeavySword <- c(47, 56, 95, 110)
Staff <- c(66, 98, 170, 195)
Wand <- c(65, 97, 167, 192)
ShiningLord <- c(65, 97, 167, 192)
MagicGuntlet <- c(65, 97, 167, 192)
ESPLimiter <- c(65, 97, 167, 192)
Bow <- c(52, 77, 133, 153)
Crossbow <- c(53, 79, 136, 157)
AncientBow <- c(52, 77, 133, 153)
DualBowgun <- c(52, 77, 133, 153)
BreathShooter <- c(52, 77, 133, 153)
Wristband <- c(28, 42, 72, 83)
Dagger <- c(52, 77, 133, 153)
Cane <- c(53, 79, 136, 157)
Chain <- c(52, 77, 133, 153)
Fan <- c(52, 77, 133, 153)
Gun <- c(40, 60, 104, 120)
Knuckle <- c(41, 62, 106, 123)
HandCannon <- c(56, 84, 145, 167)
EnergySword <- c(41, 62, 106, 123)
SoulShooter <- c(41, 62, 106, 123)
Chakram <- c(52, 77, 133, 153)}
AddoptionTier4 <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                        Tuner, LongSword, HeavySword, 
                        Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                        Bow, Crossbow, AncientBow, DualBowgun, BreathShooter,
                        Wristband, Dagger, Cane, Chain, Fan,
                        Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(AddoptionTier4) <- c("Fafnir", "Absolabs", "ArcaneShade", "Genesis")

### Tier 5 - 1추
{Sword <- c(68, 101, 175, 201)
Hammer <- c(68, 101, 175, 201)
TwohandSword <- c(71, 106, 182, 210)
TwohandAxe <- c(71, 106, 182, 210)
TwohandHammer <- c(71, 106, 182, 201)
Polarm <- c(63, 95, 163, 187)
Spear <- c(71, 106, 182, 210)
GuntletRevolver <- c(53, 79, 136, 157)
Desperado <- c(71, 106, 182, 210)
Tuner <- c(71, 106, 182, 210)
LongSword <- c(64, 76, 131, 151)
HeavySword <- c(64, 76, 131, 151)
Staff <- c(84, 126, 218, 250)
Wand <- c(83, 124, 214, 246)
ShiningLord <- c(83, 124, 214, 246)
MagicGuntlet <- c(83, 124, 214, 246)
ESPLimiter <- c(83, 124, 214, 246)
Bow <- c(66, 99, 170, 196)
Crossbow <- c(68, 101, 175, 201)
AncientBow <- c(66, 99, 170, 196)
DualBowgun <- c(66, 99, 170, 196)
BreathShooter <- c(66, 99, 170, 196)
Wristband <- c(36, 53, 92, 106)
Dagger <- c(66, 99, 170, 196)
Cane <- c(68, 101, 175, 201)
Chain <- c(66, 99, 170, 196)
Fan <- c(66, 99, 170, 196)
Gun <- c(52, 77, 133, 154)
Knuckle <- c(53, 79, 136, 157)
HandCannon <- c(72, 108, 186, 215)
EnergySword <- c(53, 79, 136, 157)
SoulShooter <- c(53, 79, 136, 157)
Chakram <- c(66, 99, 170, 196)}
AddoptionTier5 <- rbind(Sword, Hammer, TwohandSword, TwohandAxe, TwohandHammer, Polarm, Spear, GuntletRevolver, Desperado, 
                        Tuner, LongSword, HeavySword, 
                        Staff, Wand, ShiningLord, MagicGuntlet, ESPLimiter, 
                        Bow, Crossbow, AncientBow, DualBowgun, BreathShooter, 
                        Wristband, Dagger, Cane, Chain, Fan,
                        Gun, Knuckle, HandCannon, EnergySword, SoulShooter, Chakram)
colnames(AddoptionTier5) <- c("Fafnir", "Absolabs", "ArcaneShade", "Genesis")

## SubWeapon - 확인이 필요함 추가할 거 더 없나?
SubWeaponOption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "ATK", "ATKSub", 
                     "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "IGR", "BDR", "CRR", "CDMR")
{HeroMedal <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Rosario <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
DarkKnightChain <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
FPGrimoire <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
TCGrimoire <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
BishopGrimoire <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
ArrowFeather <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Thimble <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Relic <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
DaggerSheath <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Talisman <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
FafnirBlade <- c(150, 30, 0, 0, 0, 81, 0, 0, 7, F, F, 0, 0, 0, 0, 0)
AbsolabsBlade <- c(160, 40, 0, 0, 0, 97, 0, 0, 8, F, F, 0, 0, 0, 0, 0)
ArcaneShadeBlade <- c(200, 65, 0, 0, 0, 140, 0, 0, 8, F, F, 0, 0, 0, 0, 0)
ViperWristband <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Sight <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
PowderKeg <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
SoulShield <- c(100, 21, 21, 0, 800, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
CygnusKnightsJewel <- c(100, 10, 10, 10, 0, 3, 3, 0, 0, F, F, 0, 0, 0, 0, 0)
AranWeight <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
EvanDocument <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Orb <- c(100, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
MagicArrow <- c(100, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Card <- c(100, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
FoxBead <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
BlasterGunpowder <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
MagicBead <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Arrowhead <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Magnum <- c(100, 10, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Controller <- c(100, 2, 2, 2, 900, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
DemonSlayerForceShield <- c(100, 21, 21, 0, 800, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
DemonAvengerForceShield <- c(100, 21, 0, 0, 900, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
RuinForceShield <- c(100, 10, 10, 0, 560, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
DragonEssence <- c(100, 10, 10, 10, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
WeaponBelt <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Transmitter <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
SoulRing <- c(100, 10, 10, 10, 0, 0, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Bracelet <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
MagicWing <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
PathofAbyss <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Norigae <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
Seonchu <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
FafnirZeroSubWeapon <- c(170, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 10, 30, 0, 0)
AbsolabsZeroSubWeapon <- c(180, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 10, 30, 0, 0)
ArcaneShadeZeroSubWeapon <- c(200, 0, 0, 0, 0, 0, 0, 0, 0, F, F, 0, 20, 30, 0, 0)
ChessPiece <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)
HexSeeker <- c(100, 10, 10, 0, 0, 3, 0, 0, 0, F, F, 0, 0, 0, 0, 0)}
SubWeapon <- rbind(HeroMedal, Rosario, DarkKnightChain, FPGrimoire, TCGrimoire, BishopGrimoire, ArrowFeather, Thimble, Relic, 
                   DaggerSheath, Talisman, FafnirBlade, AbsolabsBlade, ArcaneShadeBlade, ViperWristband, Sight, PowderKeg, 
                   SoulShield, CygnusKnightsJewel, AranWeight, EvanDocument, Orb, MagicArrow, Card, FoxBead, 
                   BlasterGunpowder, MagicBead, Arrowhead, Magnum, Controller, DemonSlayerForceShield, DemonAvengerForceShield, 
                   RuinForceShield, DragonEssence, Transmitter, SoulRing, Bracelet, MagicWing, PathofAbyss, Seonchu, 
                   FafnirZeroSubWeapon, AbsolabsZeroSubWeapon, ArcaneShadeZeroSubWeapon, ChessPiece, Norigae, WeaponBelt, HexSeeker)
colnames(SubWeapon) <- SubWeaponOption
SubWeapon <- data.frame(SubWeapon)


## Emblem - 칼리, 미트라 추가
SubWeaponOption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "ATK", "ATKSub", 
                     "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "IGR", "BDR", "CRR", "CDMR")
{MapleLeaf <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Heroes <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Cygnus <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Resistance <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Demon <- c(100, 10, 10, 10, 500, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Dragon <- c(100, 10, 10, 0, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Hitman <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Angel <- c(100, 10, 10, 0, 400, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Agent <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Knight <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Crystal <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Abyss <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Pungsusa <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Cheonjiin <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Time <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Kinesis <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Chaser <- c(100, 10, 10, 10, 0, 2, 2, 0, 0, F, F, 0, 0, 0, 0, 0)
Mitra <- c(200, 40, 40, 0, 0, 5, 5, 0, 0, F, F, 2, 0, 0, 0, 0)}
Emblem <- rbind(MapleLeaf, Heroes, Cygnus, Resistance, Demon, Dragon, Angel, Agent, Knight, Crystal, Abyss, Cheonjiin, Time, Kinesis, Hitman, Pungsusa, Chaser, Mitra)
colnames(Emblem) <- SubWeaponOption
Emblem <- data.frame(Emblem)

##10월 22일 여기까지

## Set Option - 칠흑 8 9셋 추가, 세트 옵션 변경, 여명 추가, 에테르넬 추가
{itemoption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "MaxHPP", "ATK", "ATKSub", 
                 "MainStatP", "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "Superior", "IGR", "BDR", "CRR", "CDMR")
  B1 <- rep(0, 19)
  B2 <- rep(0, 19)
  B3 <- c(0, 10, 10, 10, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  B4 <- rep(0, 19)
  B5 <- c(0, 10, 10, 10, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  B6 <- rep(0, 19)
  B7 <- c(0, 10, 10, 10, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0)
  B8 <- rep(0, 19)
  B9 <- c(0, 15, 15, 15, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0)
  BossAccSet <- data.frame(rbind(B1, B2, B3, B4, B5, B6, B7, B8, B9))
  
  BB1 <- rep(0, 19)
  BB2 <- c(0, 10, 10, 10, 250, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0)
  BB3 <- c(0, 10, 10, 10, 250, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0)
  BB4 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5)
  BB5 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0)
  BB6 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  BB7 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5)
  BB8 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0)
  BB9 <- c(0, 15, 15, 15, 375, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5)
  BlackBossAccSet <- data.frame(rbind(BB1, BB2, BB3, BB4, BB5, BB6, BB7, BB8, BB9))
  
  C1 <- rep(0, 19)
  C2 <- c(0, 20, 20, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  C3 <- c(0, 0, 0, 0, 0, 10, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  C4 <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0)
  ChaosRootAbyssSet <- data.frame(rbind(C1, C2, C3, C4))
  
  AB1 <- rep(0, 19)
  AB2 <- c(0, 0, 0, 0, 1500, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AB3 <- c(0, 30, 30, 30, 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AB4 <- c(0, 0, 0, 0, 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0) ##10월 23일 변경
  AB5 <- c(0, 0, 0, 0, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AB6 <- c(0, 0, 0, 0, 0, 20, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  AB7 <- c(0, 0, 0, 0, 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0)
  AbsolabsSet <- data.frame(rbind(AB1, AB2, AB3, AB4, AB5, AB6, AB7))
  
  AR1 <- rep(0, 19)
  AR2 <- c(0, 0, 0, 0, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AR3 <- c(0, 0, 0, 0, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0) ##10월 23일 변경
  AR4 <- c(0, 50, 50, 50, 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AR5 <- c(0, 0, 0, 0, 2000, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 변경
  AR6 <- c(0, 0, 0, 0, 0, 30, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  AR7 <- c(0, 0, 0, 0, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0)
  ArcaneShadeSet <- data.frame(rbind(AR1, AR2, AR3, AR4, AR5, AR6, AR7))
  
  M1 <- rep(0, 19)
  M2 <- c(0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  M3 <- c(0, 0, 0, 0, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  M4 <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0)
  MeisterSet <- data.frame(rbind(M1, M2, M3, M4))
  
  MP1 <- rep(0, 19)
  MP2 <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0)
  MonsterParkSet <- data.frame(rbind(MP1, MP2))
  
  ML1 <- rep(0, 19)
  ML2 <- rep(0, 19)
  ML3 <- c(0, 5, 5, 5, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  ML4 <- rep(0, 19)
  ML5 <- c(0, 10, 10, 10, 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  MasterLabelSet <- data.frame(rbind(ML1, ML2, ML3, ML4, ML5))
  
  D1 <- rep(0, 19)
  D2 <- c(0, 10, 10, 10, 250, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  D3 <- c(0, 10, 10, 10, 250, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) ##10월 23일 추가
  D4 <- c(0, 10, 10, 10, 250, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0) ##10월 23일 추가
  DawnAccset <- data.frame(rbind(D1, D2, D3, D4)) ##10월 23일 추가
  
  ET1 <- rep(0, 19)
  ET2 <- c(0, 0, 0, 0, 2500, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  ET3 <- c(0, 50, 50, 50, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  ET4 <- c(0, 0, 0, 0, 0, 15, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  ET5 <- c(0, 0, 0, 0, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0) ##10월 23일 추가
  ET6 <- c(0, 0, 0, 0, 0, 15, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0) ##10월 23일 추가
  ET7 <- c(0, 50, 50, 50, 2500, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  ET8 <- c(0, 0, 0, 0, 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0) ##10월 23일 추가
  EternalSet <- data.frame(rbind(ET1, ET2, ET3, ET4, ET5, ET6, ET7, ET8))}
SetOptions <- list(BossAccSet, BlackBossAccSet, ChaosRootAbyssSet, AbsolabsSet, ArcaneShadeSet, 
                   MeisterSet, MonsterParkSet, NA, MasterLabelSet, DawnAccset, EternalSet)

## Pet Set Option Function
{itemoption <- c("reqlv", "MainStat", "SubStat1", "SubStat2", "MaxHP", "MaxHPP", "ATK", "ATKSub", 
                 "MainStatP", "AllstatP", "Upgrade", "AddOption", "BossItem", "Set", "Superior", "IGR", "BDR", "CRR", "CDMR")
  D1 <- c(rep(0, 6), 7, rep(0, 12))
  D2 <- c(rep(0, 6), 9, rep(0, 12))
  D3 <- c(rep(0, 6), 11, rep(0, 12))
  LunarDreamSet <- data.frame(rbind(D1, D2, D3))
  
  P1 <- c(rep(0, 6), 8, rep(0, 12))
  P2 <- c(rep(0, 6), 10, rep(0, 12))
  P3 <- c(rep(0, 6), 12, rep(0, 12))
  LunarPetitSet <- data.frame(rbind(P1, P2, P3))}
PetSetOptions <- list(LunarDreamSet, LunarPetitSet)

##여기선 함수 세팅이 필요하므로, 나중에 다시 파악하는 것으로 한다. 12월 7일
##Newbie / Middle / UpperMiddle / UpperMiddleArcane / High / Top / Middle444 / UpperMiddle444 / High444 / NewbieDA / MiddleDA / UpperMiddleDA / UpperMiddleArcaneDA / HighDA / TopDA / EndSpec
## Final Item Specs (Newbie) - 데이터프레임 기준 밑으로 아이템 정렬 순서 / SpecSet1[1, 11] 여기에서 11은 뭘 의미? / c(3, 3, 3) 숫자의 개수는 업횟인 거 알겠는데, 3은 뭐지?
{SpecSet1 <- Newbie
Up <- data.frame()
Up <- rbind(Up, Upgrade(SpecSet1[1, 1], "Acc", SpecSet1[1, 11], T, c(3, 3, 3), 0))       #실블링
Up <- rbind(Up, Upgrade(SpecSet1[2, 1], "Acc", SpecSet1[2, 11], T, c(3, 3, 3), 0))       #고이피
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #이벤링
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #이벤링
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #성배
Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))                                             #도미
Up <- rbind(Up, Upgrade(SpecSet1[7, 1], "Acc", SpecSet1[7, 11], T, c(3, 3, 3), 0))       #매커
Up <- rbind(Up, Upgrade(SpecSet1[8, 1], "Acc", SpecSet1[8, 11], T, c(3, 3, 3, 3), 0))    #분자벨
Up <- rbind(Up, Upgrade(SpecSet1[9, 1], "Armor", SpecSet1[9, 11], T, c(rep(1, 12)), 0))  #앱솔뚝
Up <- rbind(Up, Upgrade(SpecSet1[10, 1], "Acc", SpecSet1[10, 11], T, c(rep(3, 6)), 0))   #응축
Up <- rbind(Up, Upgrade(SpecSet1[11, 1], "Acc", SpecSet1[11, 11], T, c(rep(3, 4)), 0))   #아쿠아틱
Up <- rbind(Up, Upgrade(SpecSet1[12, 1], "Armor", SpecSet1[12, 11], T, c(rep(1, 8)), 0)) #루타 상의
Up <- rbind(Up, Upgrade(SpecSet1[13, 1], "Armor", SpecSet1[13, 11], T, c(rep(1, 8)), 0)) #루타 하의
Up <- rbind(Up, Upgrade(SpecSet1[14, 1], "Armor", SpecSet1[14, 11], T, c(rep(1, 8)), 0)) #앱솔 신발
Up <- rbind(Up, Upgrade(SpecSet1[15, 1], "Acc", SpecSet1[15, 11], T, c(rep(3, 7)), 0))   #데아
Up <- rbind(Up, Upgrade(SpecSet1[16, 1], "Armor", SpecSet1[16, 11], T, c(rep(1, 2)), 0)) #앱솔 어깨
Up <- rbind(Up, Upgrade(SpecSet1[17, 1], "Gloves", SpecSet1[17, 11], T, c(rep(1, 8)), 0))#앱솔 장갑
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #웬투스 뱃지
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #카오스 벨룸 킬러
Up <- rbind(Up, Upgrade(SpecSet1[20, 1], "Armor", SpecSet1[20, 11], T, c(rep(1, 8)), 0)) #앱솔 망토
Up <- rbind(Up, HeartUpgrade(SpecSet1[21, 11], rep(1, 10)))                              #티타늄 하트
Up <- rbind(Up, PetEqipUpgrade(SpecSet1[22, 11], rep(1, 9)))                             #D 펫장비
Up <- rbind(Up, PetEqipUpgrade(SpecSet1[23, 11], rep(1, 9)))                             #D 펫장비
Up <- rbind(Up, PetEqipUpgrade(SpecSet1[24, 11], rep(1, 9)))                             #D 펫장비
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #킹 오브 루타비스
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #마라벨 무기
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #마라벨 옷
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #마라벨 망토
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #마라벨 신발
Up <- rbind(Up, c(0, 0, 0, 0, 0))                                                        #마라벨 모자
for(i in 1:30) {
  SpecSet1[i, 2] <- SpecSet1[i, 2] + Up[i, 3]
  SpecSet1[i, 3] <- SpecSet1[i, 3] + Up[i, 4]
  SpecSet1[i, 4] <- SpecSet1[i, 4] + Up[i, 5]
  SpecSet1[i, 7] <- SpecSet1[i, 7] + Up[i, 1]
  SpecSet1[i, 8] <- SpecSet1[i, 8] + Up[i, 2]
}

Sf <- data.frame()
Sf <- rbind(Sf, Starforce(SpecSet1[1, 1], F, 10, F, F, SpecSet1[1, 4]))   #실블링
Sf <- rbind(Sf, Starforce(SpecSet1[2, 1], F, 12, F, F, SpecSet1[2, 4]))   #고이피
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #이벤링
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #이벤링
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #성배
Sf <- rbind(Sf, Starforce(SpecSet1[6, 1], F, 15, F, F, SpecSet1[6, 4]))   #도미
Sf <- rbind(Sf, Starforce(SpecSet1[7, 1], F, 12, F, F, SpecSet1[7, 4]))   #매커
Sf <- rbind(Sf, Starforce(SpecSet1[8, 1], F, 12, F, F, SpecSet1[8, 4]))   #분자벨
Sf <- rbind(Sf, Starforce(SpecSet1[9, 1], F, 12, T, F, SpecSet1[9, 4]))   #앱솔뚝
Sf <- rbind(Sf, Starforce(SpecSet1[10, 1], F, 10, F, F, SpecSet1[10, 4])) #응축
Sf <- rbind(Sf, Starforce(SpecSet1[11, 1], F, 8, F, F, SpecSet1[11, 4]))  #아쿠아틱
Sf <- rbind(Sf, Starforce(SpecSet1[12, 1], F, 12, T, F, SpecSet1[12, 4])) #루타 상의
Sf <- rbind(Sf, Starforce(SpecSet1[13, 1], F, 12, T, F, SpecSet1[13, 4])) #루타 하의
Sf <- rbind(Sf, Starforce(SpecSet1[14, 1], F, 12, T, F, SpecSet1[14, 4])) #앱솔 신발
Sf <- rbind(Sf, Starforce(SpecSet1[15, 1], F, 12, F, F, SpecSet1[15, 4])) #데아
Sf <- rbind(Sf, Starforce(SpecSet1[16, 1], F, 12, T, F, SpecSet1[16, 4])) #앱솔 어깨
Sf <- rbind(Sf, Starforce(SpecSet1[17, 1], F, 12, T, T, SpecSet1[17, 4])) #앱솔 장갑
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #웬투스 뱃지
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #카오스 벨룸 킬러
Sf <- rbind(Sf, Starforce(SpecSet1[20, 1], F, 12, T, F, SpecSet1[20, 4])) #앱솔 망토
Sf <- rbind(Sf, Starforce(SpecSet1[21, 1], F, 8, F, F, SpecSet1[21, 4]))  #티타늄 하트
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #D 펫장비
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #D 펫장비
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #D 펫장비
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #킹 오브 루타비스
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #마라벨 무기
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #마라벨 옷
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #마라벨 망토
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #마라벨 신발
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))                                         #마라벨 모자
for(i in 1:30) {
  SpecSet1[i, 2] <- SpecSet1[i, 2] + Sf[i, 3]
  SpecSet1[i, 3] <- SpecSet1[i, 3] + Sf[i, 4]
  SpecSet1[i, 4] <- SpecSet1[i, 4] + Sf[i, 5]
  SpecSet1[i, 7] <- SpecSet1[i, 7] + Sf[i, 1]
  SpecSet1[i, 8] <- SpecSet1[i, 8] + Sf[i, 2]
}

Addop <- data.frame()
for(i in 1:30) {
  Addop <- rbind(Addop, Addoption(SpecSet1[i, 1], SpecSet1[i, 12], SpecSet1[i, 13], 3, 3, 0, 0, 3, 0, 0, 0))
  SpecSet1[i, 2] <- SpecSet1[i, 2] + Addop[i, 1]
  SpecSet1[i, 3] <- SpecSet1[i, 3] + Addop[i, 2]
  SpecSet1[i, 4] <- SpecSet1[i, 4] + Addop[i, 3]
  SpecSet1[i, 10] <- SpecSet1[i, 10] + Addop[i, 4]
  SpecSet1[i, 7] <- SpecSet1[i, 7] + Addop[i, 5]
}

PoYes <- c(1:4, 6:17, 20:21)
for(i in PoYes) {
  if(i!=17 & i!=9) {
    Po <- Potential(c("U", "E", "E"), c("M", "M", "O"))
  } else if(i==9) {
    Po <- Potential(c("L", "U", "U"), c("M", "M", "M"))
  } else {Po <- Potential(c("L", "U", "U"), c("CDR", "M", "O"))}
  APo <- AddPotential(SpecSet1[i, 1], ChrInfo[1, 7], c("E", "R", "R"), c("MP", "ATK", "O"))
  SpecSet1[i, 9] <- SpecSet1[i, 9] + Po[1, 1] + APo[1, 1]
  SpecSet1[i, 10] <- SpecSet1[i, 10] + Po[1, 2] + APo[1, 2]
  SpecSet1[i, 6] <- SpecSet1[i, 6] + Po[1, 3] + APo[1, 5]
  SpecSet1[i, 19] <- SpecSet1[i, 19] + Po[1, 5] + APo[1, 7]
  SpecSet1[i, 2] <- SpecSet1[i, 2] + APo[1, 3]
  SpecSet1[i, 7] <- SpecSet1[i, 7] + APo[1, 4]
}
}



## Final Item Specs (Standard / Zero)
{SpecSetZero1 <- StandardSpecZero
Up <- data.frame()
Up <- rbind(Up, Upgrade(SpecSetZero1[1, 1], "Acc", SpecSetZero1[1, 11], T, c(3, 3, 3), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[2, 1], "Acc", SpecSetZero1[2, 11], T, c(3, 3), 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))
Up <- rbind(Up, Upgrade(SpecSetZero1[7, 1], "Acc", SpecSetZero1[7, 11], T, c(3, 3, 3), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[8, 1], "Acc", SpecSetZero1[8, 11], T, c(3, 3, 3, 3), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[9, 1], "Armor", SpecSetZero1[9, 11], T, c(rep(1, 12)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[10, 1], "Acc", SpecSetZero1[10, 11], T, c(rep(3, 6)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[11, 1], "Acc", SpecSetZero1[11, 11], T, c(rep(3, 6)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[12, 1], "Armor", SpecSetZero1[12, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[13, 1], "Armor", SpecSetZero1[13, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[14, 1], "Armor", SpecSetZero1[14, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[15, 1], "Acc", SpecSetZero1[15, 11], T, c(rep(3, 7)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[16, 1], "Armor", SpecSetZero1[16, 11], T, c(rep(1, 2)), 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[17, 1], "Gloves", SpecSetZero1[17, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, Upgrade(SpecSetZero1[20, 1], "Armor", SpecSetZero1[20, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, HeartUpgrade(SpecSetZero1[21, 11], rep(1, 10)))
Up <- rbind(Up, PetEqipUpgrade(SpecSetZero1[22, 11], rep(1, 9)))
Up <- rbind(Up, PetEqipUpgrade(SpecSetZero1[23, 11], rep(1, 9)))
Up <- rbind(Up, PetEqipUpgrade(SpecSetZero1[24, 11], rep(1, 9)))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
for(i in 1:30) {
  SpecSetZero1[i, 2] <- SpecSetZero1[i, 2] + Up[i, 3]
  SpecSetZero1[i, 3] <- SpecSetZero1[i, 3] + Up[i, 4]
  SpecSetZero1[i, 4] <- SpecSetZero1[i, 4] + Up[i, 5]
  SpecSetZero1[i, 7] <- SpecSetZero1[i, 7] + Up[i, 1]
  SpecSetZero1[i, 8] <- SpecSetZero1[i, 8] + Up[i, 2]
}

Sf <- data.frame()
Sf <- rbind(Sf, Starforce(SpecSetZero1[1, 1], F, 10, F, F, SpecSetZero1[1, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[2, 1], F, 17, F, F, SpecSetZero1[2, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, Starforce(SpecSetZero1[6, 1], F, 17, F, F, SpecSetZero1[6, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[7, 1], F, 15, F, F, SpecSetZero1[7, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[8, 1], F, 17, F, F, SpecSetZero1[8, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[9, 1], F, 17, T, F, SpecSetZero1[9, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[10, 1], F, 10, F, F, SpecSetZero1[10, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[11, 1], F, 17, F, F, SpecSetZero1[11, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[12, 1], F, 17, T, F, SpecSetZero1[12, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[13, 1], F, 17, T, F, SpecSetZero1[13, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[14, 1], F, 17, T, F, SpecSetZero1[14, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[15, 1], F, 17, F, F, SpecSetZero1[15, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[16, 1], F, 17, T, F, SpecSetZero1[16, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[17, 1], F, 17, T, T, SpecSetZero1[17, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, Starforce(SpecSetZero1[20, 1], F, 17, T, F, SpecSetZero1[20, 4]))
Sf <- rbind(Sf, Starforce(SpecSetZero1[21, 1], F, 8, F, F, SpecSetZero1[21, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
for(i in 1:30) {
  SpecSetZero1[i, 2] <- SpecSetZero1[i, 2] + Sf[i, 3]
  SpecSetZero1[i, 3] <- SpecSetZero1[i, 3] + Sf[i, 4]
  SpecSetZero1[i, 4] <- SpecSetZero1[i, 4] + Sf[i, 5]
  SpecSetZero1[i, 7] <- SpecSetZero1[i, 7] + Sf[i, 1]
  SpecSetZero1[i, 8] <- SpecSetZero1[i, 8] + Sf[i, 2]
}

Addop <- data.frame()
for(i in 1:30) {
  if(i==9) {
    Addop <- rbind(Addop, Addoption(SpecSetZero1[i, 1], SpecSetZero1[i, 12], SpecSetZero1[i, 13], 4, 3, 0, 0, 0, 0, 0, 0))
  } else {
    Addop <- rbind(Addop, Addoption(SpecSetZero1[i, 1], SpecSetZero1[i, 12], SpecSetZero1[i, 13], 3, 3, 0, 0, 3, 0, 0, 0))
  }
  SpecSetZero1[i, 2] <- SpecSetZero1[i, 2] + Addop[i, 1]
  SpecSetZero1[i, 3] <- SpecSetZero1[i, 3] + Addop[i, 2]
  SpecSetZero1[i, 4] <- SpecSetZero1[i, 4] + Addop[i, 3]
  SpecSetZero1[i, 10] <- SpecSetZero1[i, 10] + Addop[i, 4]
  SpecSetZero1[i, 7] <- SpecSetZero1[i, 7] + Addop[i, 5]
}

PoYes <- c(1:3, 6:17, 20:21)
for(i in PoYes) {
  if(i!=17 & i!=9) {
    Po <- Potential(c("U", "E", "E"), c("M", "M", "O"))
  } else if(i==9) {
    Po <- Potential(c("L", "U", "U"), c("M", "M", "M"))
  } else {Po <- Potential(c("L", "U", "U"), c("CDR", "M", "O"))}
  APo <- AddPotential(SpecSetZero1[i, 1], ChrInfo[1, 7], c("E", "R", "R"), c("MP", "ATK", "O"))
  SpecSetZero1[i, 9] <- SpecSetZero1[i, 9] + Po[1, 1] + APo[1, 1]
  SpecSetZero1[i, 10] <- SpecSetZero1[i, 10] + Po[1, 2] + APo[1, 2]
  SpecSetZero1[i, 6] <- SpecSetZero1[i, 6] + Po[1, 3] + APo[1, 5]
  SpecSetZero1[i, 19] <- SpecSetZero1[i, 19] + Po[1, 5] + APo[1, 7]
  SpecSetZero1[i, 2] <- SpecSetZero1[i, 2] + APo[1, 3]
  SpecSetZero1[i, 7] <- SpecSetZero1[i, 7] + APo[1, 4]
}
}

## Final Item Specs (Standard / Xenon)
{SpecSetXenon1 <- StandardSpecs
  Up <- data.frame()
  Up <- rbind(Up, Upgrade(SpecSetXenon1[1, 1], "Acc", SpecSetXenon1[1, 11], T, c(3, 3, 3), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[2, 1], "Acc", SpecSetXenon1[2, 11], T, c(3, 3), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[7, 1], "Acc", SpecSetXenon1[7, 11], T, c(3, 3, 3), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[8, 1], "Acc", SpecSetXenon1[8, 11], T, c(3, 3, 3, 3), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[9, 1], "Armor", SpecSetXenon1[9, 11], T, c(rep(2, 3), 1, rep(2, 8)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[10, 1], "Acc", SpecSetXenon1[10, 11], T, c(rep(3, 6)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[11, 1], "Acc", SpecSetXenon1[11, 11], T, c(rep(3, 6)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[12, 1], "Armor", SpecSetXenon1[12, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[13, 1], "Armor", SpecSetXenon1[13, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[14, 1], "Armor", SpecSetXenon1[14, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[15, 1], "Acc", SpecSetXenon1[15, 11], T, c(rep(3, 7)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[16, 1], "Armor", SpecSetXenon1[16, 11], T, c(rep(1, 2)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[17, 1], "Gloves", SpecSetXenon1[17, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon1[20, 1], "Armor", SpecSetXenon1[20, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, HeartUpgrade(SpecSetXenon1[21, 11], rep(1, 10)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon1[22, 11], rep(1, 9)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon1[23, 11], rep(1, 9)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon1[24, 11], rep(1, 9)))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetXenon1[i, 2] <- SpecSetXenon1[i, 2] + Up[i, 3]
    SpecSetXenon1[i, 3] <- SpecSetXenon1[i, 3] + Up[i, 4]
    SpecSetXenon1[i, 4] <- SpecSetXenon1[i, 4] + Up[i, 5]
    SpecSetXenon1[i, 7] <- SpecSetXenon1[i, 7] + Up[i, 1]
    SpecSetXenon1[i, 8] <- SpecSetXenon1[i, 8] + Up[i, 2]
  }
  
  Sf <- data.frame()
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[1, 1], F, 10, F, F, SpecSetXenon1[1, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[2, 1], F, 17, F, F, SpecSetXenon1[2, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[6, 1], F, 17, F, F, SpecSetXenon1[6, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[7, 1], F, 15, F, F, SpecSetXenon1[7, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[8, 1], F, 17, F, F, SpecSetXenon1[8, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[9, 1], F, 17, T, F, SpecSetXenon1[9, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[10, 1], F, 10, F, F, SpecSetXenon1[10, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[11, 1], F, 17, F, F, SpecSetXenon1[11, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[12, 1], F, 17, T, F, SpecSetXenon1[12, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[13, 1], F, 17, T, F, SpecSetXenon1[13, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[14, 1], F, 17, T, F, SpecSetXenon1[14, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[15, 1], F, 17, F, F, SpecSetXenon1[15, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[16, 1], F, 17, T, F, SpecSetXenon1[16, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[17, 1], F, 17, T, T, SpecSetXenon1[17, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[20, 1], F, 17, T, F, SpecSetXenon1[20, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon1[21, 1], F, 8, F, F, SpecSetXenon1[21, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetXenon1[i, 2] <- SpecSetXenon1[i, 2] + Sf[i, 3]
    SpecSetXenon1[i, 3] <- SpecSetXenon1[i, 3] + Sf[i, 4]
    SpecSetXenon1[i, 4] <- SpecSetXenon1[i, 4] + Sf[i, 5]
    SpecSetXenon1[i, 7] <- SpecSetXenon1[i, 7] + Sf[i, 1]
    SpecSetXenon1[i, 8] <- SpecSetXenon1[i, 8] + Sf[i, 2]
  }
  
  Addop <- data.frame()
  for(i in 1:30) {
    Addop <- rbind(Addop, Addoption(SpecSetXenon1[i, 1], SpecSetXenon1[i, 12], SpecSetXenon1[i, 13], 3, 3, 3, 3, 0, 0, 0, 0))
    SpecSetXenon1[i, 2] <- SpecSetXenon1[i, 2] + Addop[i, 1]
    SpecSetXenon1[i, 3] <- SpecSetXenon1[i, 3] + Addop[i, 2]
    SpecSetXenon1[i, 4] <- SpecSetXenon1[i, 4] + Addop[i, 3]
    SpecSetXenon1[i, 10] <- SpecSetXenon1[i, 10] + Addop[i, 4]
    SpecSetXenon1[i, 7] <- SpecSetXenon1[i, 7] + Addop[i, 5]
  }
  SpecSetXenon1_A6S6 <- SpecSetXenon1
  SpecSetXenon1_A6A3 <- SpecSetXenon1
  
  PoYes <- c(1:3, 6:17, 20:21)
  t <- 1
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      if(t!=3) {
        Po <- Potential(c("U", "E", "E"), c("A", "A", "O"))
        t <- t + 1
      } else {
        Po <- Potential(c("U", "E", "E"), c("A", "O", "O"))
        t <- 1
      }
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("A", "A", "M"))
    } else {Po <- Potential(c("L", "U", "U"), c("CDR", "A", "O"))}
    APo <- AddPotential(SpecSetXenon1_A6S6[i, 1], ChrInfo[1, 7], c("E", "R", "R"), c("ATK", "ATK", "O"))
    SpecSetXenon1_A6S6[i, 9] <- SpecSetXenon1_A6S6[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetXenon1_A6S6[i, 10] <- SpecSetXenon1_A6S6[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetXenon1_A6S6[i, 6] <- SpecSetXenon1_A6S6[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetXenon1_A6S6[i, 19] <- SpecSetXenon1_A6S6[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetXenon1_A6S6[i, 2] <- SpecSetXenon1_A6S6[i, 2] + APo[1, 3]
    SpecSetXenon1_A6S6[i, 7] <- SpecSetXenon1_A6S6[i, 7] + APo[1, 4]
  }
  
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("U", "E", "E"), c("A", "A", "O"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("A", "A", "M"))
    } else {Po <- Potential(c("L", "U", "U"), c("CDR", "A", "O"))}
    APo <- AddPotential(SpecSetXenon1_A6A3[i, 1], ChrInfo[1, 7], c("E", "R", "R"), c("ATK", "ATK", "O"))
    SpecSetXenon1_A6A3[i, 9] <- SpecSetXenon1_A6A3[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetXenon1_A6A3[i, 10] <- SpecSetXenon1_A6A3[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetXenon1_A6A3[i, 6] <- SpecSetXenon1_A6A3[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetXenon1_A6A3[i, 19] <- SpecSetXenon1_A6A3[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetXenon1_A6A3[i, 2] <- SpecSetXenon1_A6A3[i, 2] + APo[1, 3]
    SpecSetXenon1_A6A3[i, 7] <- SpecSetXenon1_A6A3[i, 7] + APo[1, 4]
  }
}

## Final Item Specs (Standard / DemonAvenger)
{SpecSetDemonAvenger1 <- StandardSpecDemonAvenger
  Up <- data.frame()
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[1, 1], "Acc", SpecSetDemonAvenger1[1, 11], T, c(3, 3, 3), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[2, 1], "Acc", SpecSetDemonAvenger1[2, 11], T, c(3, 3), 0, DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, DominatorUpgrade(rep(1, 6), DA=T))
  Up <- rbind(Up, ChaosHorntailUpgrade(c(1, 2, 2)))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[8, 1], "Acc", SpecSetDemonAvenger1[8, 11], T, c(3, 3, 3, 3), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[9, 1], "Armor", SpecSetDemonAvenger1[9, 11], T, c(rep(1, 12)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[10, 1], "Acc", SpecSetDemonAvenger1[10, 11], T, c(rep(3, 6)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[11, 1], "Acc", SpecSetDemonAvenger1[11, 11], T, c(rep(3, 6)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[12, 1], "Armor", SpecSetDemonAvenger1[12, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[13, 1], "Armor", SpecSetDemonAvenger1[13, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[14, 1], "Armor", SpecSetDemonAvenger1[14, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[15, 1], "Acc", SpecSetDemonAvenger1[15, 11], T, c(rep(3, 7)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[16, 1], "Armor", SpecSetDemonAvenger1[16, 11], T, c(rep(1, 2)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[17, 1], "Gloves", SpecSetDemonAvenger1[17, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger1[20, 1], "Armor", SpecSetDemonAvenger1[20, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, HeartUpgrade(SpecSetDemonAvenger1[21, 11], rep(1, 10), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger1[22, 11], rep(1, 9), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger1[23, 11], rep(1, 9), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger1[24, 11], rep(1, 9), DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetDemonAvenger1[i, 3] <- SpecSetDemonAvenger1[i, 3] + Up[i, 4]
    SpecSetDemonAvenger1[i, 4] <- SpecSetDemonAvenger1[i, 4] + Up[i, 5]
    SpecSetDemonAvenger1[i, 5] <- SpecSetDemonAvenger1[i, 5] + Up[i, 3]
    SpecSetDemonAvenger1[i, 7] <- SpecSetDemonAvenger1[i, 7] + Up[i, 1]
    SpecSetDemonAvenger1[i, 8] <- SpecSetDemonAvenger1[i, 8] + Up[i, 2]
  }
  
  Sf <- data.frame()
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[1, 1], F, 10, F, Items[1]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[2, 1], F, 17, F, Items[2]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[6, 1], F, 17, F, Items[6]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[7, 1], F, 15, F, Items[7]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[8, 1], F, 17, F, Items[8]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[9, 1], F, 17, T, Items[9]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[10, 1], F, 10, F, Items[10]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[11, 1], F, 17, F, Items[11]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[12, 1], F, 17, T, Items[12]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[13, 1], F, 17, T, Items[13]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[14, 1], F, 17, T, Items[14]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[15, 1], F, 17, F, Items[15]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[16, 1], F, 17, T, Items[16]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[17, 1], F, 17, T, Items[17]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[20, 1], F, 17, T, Items[20]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger1[21, 1], F, 8, F, Items[21]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetDemonAvenger1[i, 3] <- SpecSetDemonAvenger1[i, 3] + Sf[i, 4]
    SpecSetDemonAvenger1[i, 4] <- SpecSetDemonAvenger1[i, 4] + Sf[i, 5]
    SpecSetDemonAvenger1[i, 5] <- SpecSetDemonAvenger1[i, 5] + Sf[i, 3]
    SpecSetDemonAvenger1[i, 7] <- SpecSetDemonAvenger1[i, 7] + Sf[i, 1]
    SpecSetDemonAvenger1[i, 8] <- SpecSetDemonAvenger1[i, 8] + Sf[i, 2]
  }
  
  Addop <- data.frame()
  for(i in 1:30) {
    if(i==7) {
      Addop <- rbind(Addop, AddoptionHP(SpecSetDemonAvenger1[i, 1], SpecSetDemonAvenger1[i, 12], SpecSetDemonAvenger1[i, 13], 4, 0, 0, 0, 0))
    } else {
      Addop <- rbind(Addop, AddoptionHP(SpecSetDemonAvenger1[i, 1], SpecSetDemonAvenger1[i, 12], SpecSetDemonAvenger1[i, 13], 4, 0, 0, 3, 4))
    }
    SpecSetDemonAvenger1[i, 3] <- SpecSetDemonAvenger1[i, 3] + Addop[i, 2]
    SpecSetDemonAvenger1[i, 5] <- SpecSetDemonAvenger1[i, 5] + Addop[i, 1]
    SpecSetDemonAvenger1[i, 10] <- SpecSetDemonAvenger1[i, 10] + Addop[i, 3]
    SpecSetDemonAvenger1[i, 7] <- SpecSetDemonAvenger1[i, 7] + Addop[i, 4]
  }
  
  PoYes <- c(1:3, 6:17, 20:21)
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("U", "E", "E"), c("HP", "HP", "O"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("HP", "HP", "HP"))
    } else {Po <- Potential(c("L", "U", "U"), c("CDR", "HP", "O"))}
    APo <- AddPotential(SpecSetDemonAvenger1[i, 1], ChrInfo[1, 7], c("E", "R", "R"), c("HPP", "ATK", "O"))
    SpecSetDemonAvenger1[i, 9] <- SpecSetDemonAvenger1[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetDemonAvenger1[i, 10] <- SpecSetDemonAvenger1[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetDemonAvenger1[i, 6] <- SpecSetDemonAvenger1[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetDemonAvenger1[i, 19] <- SpecSetDemonAvenger1[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetDemonAvenger1[i, 2] <- SpecSetDemonAvenger1[i, 2] + APo[1, 3]
    SpecSetDemonAvenger1[i, 7] <- SpecSetDemonAvenger1[i, 7] + APo[1, 4]
  }
}


## Final Item Specs (Legendry)
{SpecSet2 <- LegendrySpecs
Up <- data.frame()
Up <- rbind(Up, Upgrade(SpecSet2[1, 1], "Acc", SpecSet2[1, 11], T, c(4, 4, 4), 0))
Up <- rbind(Up, Upgrade(SpecSet2[2, 1], "Acc", SpecSet2[2, 11], T, c(4, 4), 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))
Up <- rbind(Up, Upgrade(SpecSet2[7, 1], "Acc", SpecSet2[7, 11], T, c(4, 4, 4, 4), 0))
Up <- rbind(Up, Upgrade(SpecSet2[8, 1], "Acc", SpecSet2[8, 11], T, c(4, 4), 0))
Up <- rbind(Up, Upgrade(SpecSet2[9, 1], "Armor", SpecSet2[9, 11], T, c(rep(1, 12)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[10, 1], "Acc", SpecSet2[10, 11], T, c(4, 4), 0))
Up <- rbind(Up, Upgrade(SpecSet2[11, 1], "Acc", SpecSet2[11, 11], T, c(rep(4, 6)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[12, 1], "Armor", SpecSet2[12, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[13, 1], "Armor", SpecSet2[13, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[14, 1], "Armor", SpecSet2[14, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[15, 1], "Acc", SpecSet2[15, 11], T, c(rep(4, 8)), 0))
Up <- rbind(Up, Upgrade(SpecSet2[16, 1], "Armor", SpecSet2[16, 11], T, c(6, 6), SpecSet2[16, 7]))
Up <- rbind(Up, Upgrade(SpecSet2[17, 1], "Gloves", SpecSet2[17, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, Upgrade(SpecSet2[20, 1], "Armor", SpecSet2[20, 11], T, c(rep(1, 8)), 0))
Up <- rbind(Up, HeartUpgrade(SpecSet2[21, 11], rep(1, 10)))
Up <- rbind(Up, PetEqipUpgrade(SpecSet2[22, 11], rep(2, 8)))
Up <- rbind(Up, PetEqipUpgrade(SpecSet2[23, 11], rep(2, 9)))
Up <- rbind(Up, PetEqipUpgrade(SpecSet2[24, 11], rep(2, 9)))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
Up <- rbind(Up, c(0, 0, 0, 0, 0))
for(i in 1:30) {
  SpecSet2[i, 2] <- SpecSet2[i, 2] + Up[i, 3]
  SpecSet2[i, 3] <- SpecSet2[i, 3] + Up[i, 4]
  SpecSet2[i, 4] <- SpecSet2[i, 4] + Up[i, 5]
  SpecSet2[i, 7] <- SpecSet2[i, 7] + Up[i, 1]
  SpecSet2[i, 8] <- SpecSet2[i, 8] + Up[i, 2]
}

Sf <- data.frame()
Sf <- rbind(Sf, Starforce(SpecSet2[1, 1], F, 10, F, F, SpecSet2[1, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[2, 1], F, 22, F, F, SpecSet2[2, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, Starforce(SpecSet2[6, 1], F, 22, F, F, SpecSet2[6, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[7, 1], F, 20, F, F, SpecSet2[7, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[8, 1], T, 12, F, F, SpecSet2[8, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[9, 1], F, 22, T, F, SpecSet2[9, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[10, 1], F, 20, F, F, SpecSet2[10, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[11, 1], F, 22, F, F, SpecSet2[11, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[12, 1], F, 22, T, F, SpecSet2[12, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[13, 1], F, 22, T, F, SpecSet2[13, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[14, 1], F, 22, T, F, SpecSet2[14, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[15, 1], F, 22, F, F, SpecSet2[15, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[16, 1], F, 22, T, F, SpecSet2[16, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[17, 1], F, 22, T, T, SpecSet2[17, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, Starforce(SpecSet2[20, 1], F, 22, T, F, SpecSet2[20, 4]))
Sf <- rbind(Sf, Starforce(SpecSet2[21, 1], F, 8, F, F, SpecSet2[21, 4]))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
for(i in 1:30) {
  SpecSet2[i, 2] <- SpecSet2[i, 2] + Sf[i, 3]
  SpecSet2[i, 3] <- SpecSet2[i, 3] + Sf[i, 4]
  SpecSet2[i, 4] <- SpecSet2[i, 4] + Sf[i, 5]
  SpecSet2[i, 7] <- SpecSet2[i, 7] + Sf[i, 1]
  SpecSet2[i, 8] <- SpecSet2[i, 8] + Sf[i, 2]
}

Addop <- data.frame()
for(i in 1:30) {
  Addop <- rbind(Addop, Addoption(SpecSet2[i, 1], SpecSet2[i, 12], SpecSet2[i, 13], 4, ifelse(SpecSet2[i, 13]==1, 4, 3), 0, 0, ifelse(SpecSet2[i, 13]==1, 3, 0), 0, 0, 0))
  SpecSet2[i, 2] <- SpecSet2[i, 2] + Addop[i, 1]
  SpecSet2[i, 3] <- SpecSet2[i, 3] + Addop[i, 2]
  SpecSet2[i, 4] <- SpecSet2[i, 4] + Addop[i, 3]
  SpecSet2[i, 10] <- SpecSet2[i, 10] + Addop[i, 4]
  SpecSet2[i, 7] <- SpecSet2[i, 7] + Addop[i, 5]
}

PoYes <- c(1:3, 6:17, 20:21)
for(i in PoYes) {
  if(i!=17 & i!=9) {
    Po <- Potential(c("L", "U", "U"), c("M", "M", "A"))
  } else if(i==9) {
    Po <- Potential(c("L", "U", "U"), c("M", "M", "M"))
  } else {Po <- Potential(c("L", "L", "U"), c("CDR", "CDR", "O"))}
  APo <- AddPotential(SpecSet2[i, 1], ChrInfo[1, 7], c("U", "E", "E"), c("MP", "ATK", "O"))
  SpecSet2[i, 9] <- SpecSet2[i, 9] + Po[1, 1] + APo[1, 1]
  SpecSet2[i, 10] <- SpecSet2[i, 10] + Po[1, 2] + APo[1, 2]
  SpecSet2[i, 6] <- SpecSet2[i, 6] + Po[1, 3] + APo[1, 5]
  SpecSet2[i, 19] <- SpecSet2[i, 19] + Po[1, 5] + APo[1, 7]
  SpecSet2[i, 2] <- SpecSet2[i, 2] + APo[1, 3]
  SpecSet2[i, 7] <- SpecSet2[i, 7] + APo[1, 4]
}
}

## Final Item Specs (Legendry / Zero)
{SpecSetZero2 <- LegendrySpecsZero
  Up <- data.frame()
  Up <- rbind(Up, Upgrade(SpecSetZero2[1, 1], "Acc", SpecSetZero2[1, 11], T, c(4, 4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[2, 1], "Acc", SpecSetZero2[2, 11], T, c(4, 4), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))
  Up <- rbind(Up, Upgrade(SpecSetZero2[7, 1], "Acc", SpecSetZero2[7, 11], T, c(4, 4, 4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[8, 1], "Acc", SpecSetZero2[8, 11], T, c(4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[9, 1], "Armor", SpecSetZero2[9, 11], T, c(rep(1, 12)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[10, 1], "Acc", SpecSetZero2[10, 11], T, c(4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[11, 1], "Acc", SpecSetZero2[11, 11], T, c(rep(4, 6)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[12, 1], "Armor", SpecSetZero2[12, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[13, 1], "Armor", SpecSetZero2[13, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[14, 1], "Armor", SpecSetZero2[14, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[15, 1], "Acc", SpecSetZero2[15, 11], T, c(rep(4, 8)), 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[16, 1], "Armor", SpecSetZero2[16, 11], T, c(6, 6), SpecSetZero2[16, 7]))
  Up <- rbind(Up, Upgrade(SpecSetZero2[17, 1], "Gloves", SpecSetZero2[17, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, Upgrade(SpecSetZero2[20, 1], "Armor", SpecSetZero2[20, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, HeartUpgrade(SpecSetZero2[21, 11], rep(1, 10)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetZero2[22, 11], rep(2, 8)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetZero2[23, 11], rep(2, 9)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetZero2[24, 11], rep(2, 9)))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetZero2[i, 2] <- SpecSetZero2[i, 2] + Up[i, 3]
    SpecSetZero2[i, 3] <- SpecSetZero2[i, 3] + Up[i, 4]
    SpecSetZero2[i, 4] <- SpecSetZero2[i, 4] + Up[i, 5]
    SpecSetZero2[i, 7] <- SpecSetZero2[i, 7] + Up[i, 1]
    SpecSetZero2[i, 8] <- SpecSetZero2[i, 8] + Up[i, 2]
  }
  
  Sf <- data.frame()
  Sf <- rbind(Sf, Starforce(SpecSetZero2[1, 1], F, 10, F, F, SpecSetZero2[1, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[2, 1], F, 22, F, F, SpecSetZero2[2, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[6, 1], F, 22, F, F, SpecSetZero2[6, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[7, 1], F, 20, F, F, SpecSetZero2[7, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[8, 1], T, 12, F, F, SpecSetZero2[8, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[9, 1], F, 22, T, F, SpecSetZero2[9, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[10, 1], F, 20, F, F, SpecSetZero2[10, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[11, 1], F, 22, F, F, SpecSetZero2[11, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[12, 1], F, 22, T, F, SpecSetZero2[12, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[13, 1], F, 22, T, F, SpecSetZero2[13, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[14, 1], F, 22, T, F, SpecSetZero2[14, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[15, 1], F, 22, F, F, SpecSetZero2[15, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[16, 1], F, 22, T, F, SpecSetZero2[16, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[17, 1], F, 22, T, T, SpecSetZero2[17, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[20, 1], F, 22, T, F, SpecSetZero2[20, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetZero2[21, 1], F, 8, F, F, SpecSetZero2[21, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetZero2[i, 2] <- SpecSetZero2[i, 2] + Sf[i, 3]
    SpecSetZero2[i, 3] <- SpecSetZero2[i, 3] + Sf[i, 4]
    SpecSetZero2[i, 4] <- SpecSetZero2[i, 4] + Sf[i, 5]
    SpecSetZero2[i, 7] <- SpecSetZero2[i, 7] + Sf[i, 1]
    SpecSetZero2[i, 8] <- SpecSetZero2[i, 8] + Sf[i, 2]
  }
  
  Addop <- data.frame()
  for(i in 1:30) {
    Addop <- rbind(Addop, Addoption(SpecSetZero2[i, 1], SpecSetZero2[i, 12], SpecSetZero2[i, 13], 4, ifelse(SpecSetZero2[i, 13]==1, 4, 3), 0, 0, ifelse(SpecSetZero2[i, 13]==1, 3, 0), 0, 0, 0))
    SpecSetZero2[i, 2] <- SpecSetZero2[i, 2] + Addop[i, 1]
    SpecSetZero2[i, 3] <- SpecSetZero2[i, 3] + Addop[i, 2]
    SpecSetZero2[i, 4] <- SpecSetZero2[i, 4] + Addop[i, 3]
    SpecSetZero2[i, 10] <- SpecSetZero2[i, 10] + Addop[i, 4]
    SpecSetZero2[i, 7] <- SpecSetZero2[i, 7] + Addop[i, 5]
  }
  
  PoYes <- c(1:3, 6:17, 20:21)
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("L", "U", "U"), c("M", "M", "A"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("M", "M", "M"))
    } else {Po <- Potential(c("L", "L", "U"), c("CDR", "CDR", "O"))}
    APo <- AddPotential(SpecSetZero2[i, 1], ChrInfo[1, 7], c("U", "E", "E"), c("MP", "ATK", "O"))
    SpecSetZero2[i, 9] <- SpecSetZero2[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetZero2[i, 10] <- SpecSetZero2[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetZero2[i, 6] <- SpecSetZero2[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetZero2[i, 19] <- SpecSetZero2[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetZero2[i, 2] <- SpecSetZero2[i, 2] + APo[1, 3]
    SpecSetZero2[i, 7] <- SpecSetZero2[i, 7] + APo[1, 4]
  }
}

## Final Item Specs (Legendry / Xenon)
{SpecSetXenon2 <- LegendrySpecs
  Up <- data.frame()
  Up <- rbind(Up, Upgrade(SpecSetXenon2[1, 1], "Acc", SpecSetXenon2[1, 11], T, c(4, 4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[2, 1], "Acc", SpecSetXenon2[2, 11], T, c(4, 4), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, DominatorUpgrade(rep(1, 6)))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[7, 1], "Acc", SpecSetXenon2[7, 11], T, c(4, 4, 4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[8, 1], "Acc", SpecSetXenon2[8, 11], T, c(4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[9, 1], "Armor", SpecSetXenon2[9, 11], T, c(rep(2, 3), 1, rep(2, 8)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[10, 1], "Acc", SpecSetXenon2[10, 11], T, c(4, 4), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[11, 1], "Acc", SpecSetXenon2[11, 11], T, c(rep(4, 6)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[12, 1], "Armor", SpecSetXenon2[12, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[13, 1], "Armor", SpecSetXenon2[13, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[14, 1], "Armor", SpecSetXenon2[14, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[15, 1], "Acc", SpecSetXenon2[15, 11], T, c(rep(4, 8)), 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[16, 1], "Armor", SpecSetXenon2[16, 11], T, c(6, 6), SpecSetXenon2[16, 7]))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[17, 1], "Gloves", SpecSetXenon2[17, 11], T, c(rep(1, 8)), 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, Upgrade(SpecSetXenon2[20, 1], "Armor", SpecSetXenon2[20, 11], T, c(rep(2, 3), 1, rep(2, 4)), 0, XenonAllStat=T))
  Up <- rbind(Up, HeartUpgrade(SpecSetXenon2[21, 11], rep(1, 10)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon2[22, 11], rep(2, 8)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon2[23, 11], rep(2, 9)))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetXenon2[24, 11], rep(2, 9)))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetXenon2[i, 2] <- SpecSetXenon2[i, 2] + Up[i, 3]
    SpecSetXenon2[i, 3] <- SpecSetXenon2[i, 3] + Up[i, 4]
    SpecSetXenon2[i, 4] <- SpecSetXenon2[i, 4] + Up[i, 5]
    SpecSetXenon2[i, 7] <- SpecSetXenon2[i, 7] + Up[i, 1]
    SpecSetXenon2[i, 8] <- SpecSetXenon2[i, 8] + Up[i, 2]
  }
  
  Sf <- data.frame()
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[1, 1], F, 10, F, F, SpecSetXenon2[1, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[2, 1], F, 22, F, F, SpecSetXenon2[2, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[6, 1], F, 22, F, F, SpecSetXenon2[6, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[7, 1], F, 20, F, F, SpecSetXenon2[7, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[8, 1], T, 12, F, F, SpecSetXenon2[8, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[9, 1], F, 22, T, F, SpecSetXenon2[9, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[10, 1], F, 20, F, F, SpecSetXenon2[10, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[11, 1], F, 22, F, F, SpecSetXenon2[11, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[12, 1], F, 22, T, F, SpecSetXenon2[12, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[13, 1], F, 22, T, F, SpecSetXenon2[13, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[14, 1], F, 22, T, F, SpecSetXenon2[14, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[15, 1], F, 22, F, F, SpecSetXenon2[15, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[16, 1], F, 22, T, F, SpecSetXenon2[16, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[17, 1], F, 22, T, T, SpecSetXenon2[17, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[20, 1], F, 22, T, F, SpecSetXenon2[20, 4]))
  Sf <- rbind(Sf, Starforce(SpecSetXenon2[21, 1], F, 8, F, F, SpecSetXenon2[21, 4]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetXenon2[i, 2] <- SpecSetXenon2[i, 2] + Sf[i, 3]
    SpecSetXenon2[i, 3] <- SpecSetXenon2[i, 3] + Sf[i, 4]
    SpecSetXenon2[i, 4] <- SpecSetXenon2[i, 4] + Sf[i, 5]
    SpecSetXenon2[i, 7] <- SpecSetXenon2[i, 7] + Sf[i, 1]
    SpecSetXenon2[i, 8] <- SpecSetXenon2[i, 8] + Sf[i, 2]
  }
  
  Addop <- data.frame()
  for(i in 1:30) {
    Addop <- rbind(Addop, Addoption(SpecSetXenon2[i, 1], SpecSetXenon2[i, 12], SpecSetXenon2[i, 13], 4, ifelse(SpecSetXenon2[i, 13]==1, 4, 3), ifelse(SpecSetXenon2[i, 13]==1, 3, 0), ifelse(SpecSetXenon2[i, 13]==1, 3, 0), 
                                    0, 0, 0, 0))
    SpecSetXenon2[i, 2] <- SpecSetXenon2[i, 2] + Addop[i, 1]
    SpecSetXenon2[i, 3] <- SpecSetXenon2[i, 3] + Addop[i, 2]
    SpecSetXenon2[i, 4] <- SpecSetXenon2[i, 4] + Addop[i, 3]
    SpecSetXenon2[i, 10] <- SpecSetXenon2[i, 10] + Addop[i, 4]
    SpecSetXenon2[i, 7] <- SpecSetXenon2[i, 7] + Addop[i, 5]
  }
  SpecSetXenon2_A15S9 <- SpecSetXenon2
  SpecSetXenon2_A15A6 <- SpecSetXenon2
  
  PoYes <- c(1:3, 6:17, 20:21)
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("L", "U", "E"), c("A", "A", "A"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("A", "A", "A"))
    } else {Po <- Potential(c("L", "L", "U"), c("CDR", "CDR", "O"))}
    APo <- AddPotential(SpecSetXenon2_A15S9[i, 1], ChrInfo[1, 7], c("U", "E", "E"), c("AP", "ATK", "O"))
    SpecSetXenon2_A15S9[i, 9] <- SpecSetXenon2_A15S9[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetXenon2_A15S9[i, 10] <- SpecSetXenon2_A15S9[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetXenon2_A15S9[i, 6] <- SpecSetXenon2_A15S9[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetXenon2_A15S9[i, 19] <- SpecSetXenon2_A15S9[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetXenon2_A15S9[i, 2] <- SpecSetXenon2_A15S9[i, 2] + APo[1, 3]
    SpecSetXenon2_A15S9[i, 7] <- SpecSetXenon2_A15S9[i, 7] + APo[1, 4]
  }
  
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("L", "U", "U"), c("A", "A", "A"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("A", "A", "A"))
    } else {Po <- Potential(c("L", "L", "U"), c("CDR", "CDR", "O"))}
    APo <- AddPotential(SpecSetXenon2_A15A6[i, 1], ChrInfo[1, 7], c("U", "E", "E"), c("AP", "ATK", "O"))
    SpecSetXenon2_A15A6[i, 9] <- SpecSetXenon2_A15A6[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetXenon2_A15A6[i, 10] <- SpecSetXenon2_A15A6[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetXenon2_A15A6[i, 6] <- SpecSetXenon2_A15A6[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetXenon2_A15A6[i, 19] <- SpecSetXenon2_A15A6[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetXenon2_A15A6[i, 2] <- SpecSetXenon2_A15A6[i, 2] + APo[1, 3]
    SpecSetXenon2_A15A6[i, 7] <- SpecSetXenon2_A15A6[i, 7] + APo[1, 4]
  }
}

## Final Item Specs (Legendry / DemonAvenger)
{SpecSetDemonAvenger2 <- LegendrySpecsDemonAvenger
  Up <- data.frame()
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[1, 1], "Acc", SpecSetDemonAvenger2[1, 11], T, c(4, 4, 4), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[2, 1], "Acc", SpecSetDemonAvenger2[2, 11], T, c(4, 4), 0, DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, DominatorUpgrade(rep(1, 6), DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[7, 1], "Acc", SpecSetDemonAvenger2[7, 11], T, c(4, 4, 4, 4), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[8, 1], "Acc", SpecSetDemonAvenger2[8, 11], T, c(4, 4), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[9, 1], "Armor", SpecSetDemonAvenger2[9, 11], T, c(rep(1, 12)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[10, 1], "Acc", SpecSetDemonAvenger2[10, 11], T, c(4, 4), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[11, 1], "Acc", SpecSetDemonAvenger2[11, 11], T, c(rep(4, 6)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[12, 1], "Armor", SpecSetDemonAvenger2[12, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[13, 1], "Armor", SpecSetDemonAvenger2[13, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[14, 1], "Armor", SpecSetDemonAvenger2[14, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[15, 1], "Acc", SpecSetDemonAvenger2[15, 11], T, c(rep(4, 7)), 0, DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[16, 1], "Armor", SpecSetDemonAvenger2[16, 11], T, c(6, 6), SpecSetDemonAvenger2[16, 7], DA=T))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[17, 1], "Gloves", SpecSetDemonAvenger2[17, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, Upgrade(SpecSetDemonAvenger2[20, 1], "Armor", SpecSetDemonAvenger2[20, 11], T, c(rep(1, 8)), 0, DA=T))
  Up <- rbind(Up, HeartUpgrade(SpecSetDemonAvenger2[21, 11], rep(1, 10), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger2[22, 11], rep(2, 8), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger2[23, 11], rep(2, 9), DA=T))
  Up <- rbind(Up, PetEqipUpgrade(SpecSetDemonAvenger2[24, 11], rep(2, 9), DA=T))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  Up <- rbind(Up, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetDemonAvenger2[i, 3] <- SpecSetDemonAvenger2[i, 3] + Up[i, 4]
    SpecSetDemonAvenger2[i, 4] <- SpecSetDemonAvenger2[i, 4] + Up[i, 5]
    SpecSetDemonAvenger2[i, 5] <- SpecSetDemonAvenger2[i, 5] + Up[i, 3]
    SpecSetDemonAvenger2[i, 7] <- SpecSetDemonAvenger2[i, 7] + Up[i, 1]
    SpecSetDemonAvenger2[i, 8] <- SpecSetDemonAvenger2[i, 8] + Up[i, 2]
  }
  
  Sf <- data.frame()
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[1, 1], F, 10, F, Items[1]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[2, 1], F, 22, F, Items[2]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[6, 1], F, 22, F, Items[6]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[7, 1], F, 20, F, Items[7]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[8, 1], T, 12, F, Items[8]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[9, 1], F, 22, T, Items[9]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[10, 1], F, 20, F, Items[10]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[11, 1], F, 22, F, Items[11]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[12, 1], F, 22, T, Items[12]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[13, 1], F, 22, T, Items[13]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[14, 1], F, 22, T, Items[14]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[15, 1], F, 22, F, Items[15]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[16, 1], F, 22, T, Items[16]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[17, 1], F, 22, T, Items[17]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[20, 1], F, 22, T, Items[20]))
  Sf <- rbind(Sf, StarforceDA(SpecSetDemonAvenger2[21, 1], F, 8, F, Items[21]))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  Sf <- rbind(Sf, c(0, 0, 0, 0, 0))
  for(i in 1:30) {
    SpecSetDemonAvenger2[i, 3] <- SpecSetDemonAvenger2[i, 3] + Sf[i, 4]
    SpecSetDemonAvenger2[i, 4] <- SpecSetDemonAvenger2[i, 4] + Sf[i, 5]
    SpecSetDemonAvenger2[i, 5] <- SpecSetDemonAvenger2[i, 5] + Sf[i, 3]
    SpecSetDemonAvenger2[i, 7] <- SpecSetDemonAvenger2[i, 7] + Sf[i, 1]
    SpecSetDemonAvenger2[i, 8] <- SpecSetDemonAvenger2[i, 8] + Sf[i, 2]
  }
  
  Addop <- data.frame()
  for(i in 1:30) {
    Addop <- rbind(Addop, AddoptionHP(SpecSetDemonAvenger2[i, 1], SpecSetDemonAvenger2[i, 12], SpecSetDemonAvenger2[i, 13], ifelse(SpecSetDemonAvenger2[i, 13]==1, 5, 4), 0, 0, 
                                      ifelse(SpecSetDemonAvenger2[i, 13]==1, 3, 0), ifelse(SpecSetDemonAvenger2[i, 13]==1, 3, 0)))
    SpecSetDemonAvenger2[i, 3] <- SpecSetDemonAvenger2[i, 3] + Addop[i, 2]
    SpecSetDemonAvenger2[i, 5] <- SpecSetDemonAvenger2[i, 5] + Addop[i, 1]
    SpecSetDemonAvenger2[i, 10] <- SpecSetDemonAvenger2[i, 10] + Addop[i, 3]
    SpecSetDemonAvenger2[i, 7] <- SpecSetDemonAvenger2[i, 7] + Addop[i, 4]
  }
  
  PoYes <- c(1:3, 6:17, 20:21)
  for(i in PoYes) {
    if(i!=17 & i!=9) {
      Po <- Potential(c("L", "U", "E"), c("HP", "HP", "HP"))
    } else if(i==9) {
      Po <- Potential(c("L", "U", "U"), c("HP", "HP", "HP"))
    } else {Po <- Potential(c("L", "L", "U"), c("CDR", "CDR", "O"))}
    APo <- AddPotential(SpecSetDemonAvenger2[i, 1], ChrInfo[1, 7], c("U", "E", "E"), c("HPP", "HPP", "O"))
    SpecSetDemonAvenger2[i, 9] <- SpecSetDemonAvenger2[i, 9] + Po[1, 1] + APo[1, 1]
    SpecSetDemonAvenger2[i, 10] <- SpecSetDemonAvenger2[i, 10] + Po[1, 2] + APo[1, 2]
    SpecSetDemonAvenger2[i, 6] <- SpecSetDemonAvenger2[i, 6] + Po[1, 3] + APo[1, 5]
    SpecSetDemonAvenger2[i, 19] <- SpecSetDemonAvenger2[i, 19] + Po[1, 5] + APo[1, 7]
    SpecSetDemonAvenger2[i, 2] <- SpecSetDemonAvenger2[i, 2] + APo[1, 3]
    SpecSetDemonAvenger2[i, 7] <- SpecSetDemonAvenger2[i, 7] + APo[1, 4]
  }
}
