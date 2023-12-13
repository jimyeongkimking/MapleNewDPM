## Character Info - 직업 이름 / 직업군 / 분류 / 주스탯 / 부스탯 / 부스탯2 / 기본 숙련도 벡터와 이를 합친 캐릭터 정보 데이터프레임이 있음

job <- c("Hero", "Palladin", "DarkKnight", "ArchMageFP", "ArchMageTC", "Bishop", "Bowmaster", "Marksman", "PathFinder",
         "NightLord", "Shadower", "DualBlader", "Viper", "Captain", "CannonMaster", 
         "Mikhail", "SoulMaster", "FlameWizard", "WindBreaker", "NightWalker", "Striker", 
         "Aran", "Evan", "Luminous", "Mercedes", "Phantom", "Eunwol", 
         "Blaster", "BattleMage", "WildHunter", "Mechanic", "Xenon", "DemonSlayer", "DemonAvenger", 
         "Kaiser", "Kain", "Cadena", "AngelicBuster", "Adele", "Illium", "Khali", "Ark", "Lara", "Hoyeong", "Zero", "Kinesis")

#직업군 정렬은 전사 - 법사 - 궁수 - 도적 - 해적 순
#분류(행)는 모험가 - 시그너스 - 영웅 - 레지스탕스 - 노바 및 기타..
#칼리가 없음 2023-11-29 추가했음 

class1 <- c("Warrior", "Warrior", "Warrior", "Wizard", "Wizard", "Wizard", "Bowman", "Bowman", "Bowman",
            "Thief", "Thief", "Thief", "Pirate", "Pirate", "Pirate", 
            "Warrior", "Warrior", "Wizard", "Bowman", "Thief", "Pirate", 
            "Warrior", "Wizard", "Wizard", "Bowman", "Thief", "Pirate", 
            "Warrior", "Wizard", "Bowman", "Pirate", "Hybrid", "Warrior", "Warrior", 
            "Warrior", "Bowman", "Thief", "Pirate", "Warrior", "Wizard", "Thief", "Pirate", "Wizard", "Thief", "Warrior", "Wizard") #칼리 2023-11-29 추가

class2 <- c(rep("Adventure", 15), rep("CygnusKnights", 6), rep("Heroes", 6), rep("Resistance", 5), rep("Demon", 2), 
            rep("Nova", 4), rep("Lef", 4), rep("Anima", 2), "Transcedent", "Supernatural") #칼리 2023-11-29 추가 

MainStat <- c("STR", "STR", "STR", "INT", "INT", "INT", "DEX", "DEX", "DEX", "LUK", "LUK", "LUK", "STR", "DEX", "STR",
              "STR", "STR", "INT", "DEX", "LUK", "STR", "STR", "INT", "INT", "DEX", "LUK", "STR", 
              "STR", "INT", "DEX", "DEX", "LUK", "STR", "HP", 
              "STR", "DEX", "LUK", "DEX", "STR", "INT", "LUK", "STR", "INT", "LUK", "STR", "INT") #칼리 2023-11-29 추가 

SubStat1 <- c("DEX", "DEX", "DEX", "LUK", "LUK", "LUK", "STR", "STR", "STR", "DEX", "DEX", "DEX", "DEX", "STR", "DEX", 
              "DEX", "DEX", "LUK", "STR", "DEX", "DEX", "DEX", "LUK", "LUK", "STR", "DEX", "DEX", 
              "DEX", "LUK", "STR", "STR", "DEX", "DEX", "STR",
              "DEX", "STR", "DEX", "STR", "DEX", "LUK", "DEX", "DEX", "LUK", "DEX", "DEX", "LUK") #칼리 2023-11-29 추가 

SubStat2 <- c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "STR", "STR", NA, NA, NA, 
              NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,
              NA, NA, NA, NA, "STR", NA, NA,
              NA, NA, "STR", NA, NA, NA, NA, NA, NA, NA, NA, NA) #칼리 2023-11-29 추가 

BaseMastery <- c(20, 20, 20, 25, 25, 25, 15, 15, 15, 
                 15, 20, 20, 20, 15, 15, 
                 20, 20, 25, 15, 15, 20, 
                 20, 25, 25, 15, 20, 20, 
                 20, 25, 15, 15, 20, 20, 20, 
                 20, 15, 20, 15, 20, 20, 20, 20, 25, 20, 20, 20) #칼리 2023-11-29 추가 - 칼리 기본 마스터리 20

ChrInfo <- data.frame(job, class1, class2, MainStat, SubStat1, SubStat2, BaseMastery, stringsAsFactors=F) #문자열을 팩터로 바꾸지 마 포함