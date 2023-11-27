## Package Loading
library(data.table) #데이터 조작 및 분석에 유용한 기능을 제공하는 패키지
library(parallel) #병렬 처리와 관련된 함수와 기능을 제공하는 패키지


## Option Settings
options("scipen"=500) #매우 큰 숫자를 과학적 표기법으로 표시하지 않고 일반적인 숫자 형식으로 표시
options("max.print"=100000) #최대 100,000개의 행까지 출력


## DPM Data Frame Make
Dummy <- data.frame(t(rep(0, 46))) #직업 수 만큼 행렬 생성 - 데이터 프레임 변환 - 더미에 할당(0으로 채워진 데이터 프레임 생성)
Dummy <- rbind(Dummy, Dummy, Dummy, Dummy) #더미 데이터 프레임을 4번 복사해 총 4배로 확장한 후, 다시 더미에 할당
colnames(Dummy) <- job #데이터 프레임 Dummy의 열 이름을 job 변수의 값으로 설정 - job은 어디에 있지?
rownames(Dummy) <- c("DPM", "DamageLeakage", "Restraint", "40s") #데이터 프레임Dummy의 행 이름을 DPM, 딜 누수, 리레딜, 40초딜로 설정
Dummy <- get0(DPMCalcOption$DataName, ifnotfound = Dummy)
#DPMCalcOption 객체에서 DataName 속성을 가져와서 해당 이름의 데이터 프레임을 찾고,
#해당 데이터 프레임이 존재하지 않으면, 앞에서 생성한 Dummy 데이터 프레임을 사용

assign(DPMCalcOption$DataName, Dummy) #동적 변수 생성 및 Dummy 참조시키기


## Optimization Data
if(exists("PotentialOpt") == F) { #R환경에 PotentialOpt있음?
  PotentialOpt <- list() #PotentialOpt라는 빈 리스트 생성
  PotentialOpt$Dummy <- data.frame(ATKP=rep(0, nrow(ChrInfo)), #리스트 PotentialOpt에 Dummy라는 이름의 데이터프레임 생성하고 설정
                                   IGR=rep(0, nrow(ChrInfo)), #공퍼, 방무, 보공을 각 열로, 행 이름은 ChrInfo의 job 열 값 사용 
                                   BDR=rep(0, nrow(ChrInfo)), 
                                   row.names=ChrInfo$job, 
                                   stringsAsFactors=F) #문자열을 팩터로 변환하지 마
}

if(exists("HyperStatOpt") == F) { #R환경에 HyperStatOpt있음?
  HyperStatOpt <- list() #HyperStatOpt라는 빈 리스트 생성
  HyperStatOpt$Dummy <- data.frame(MainStat=rep(0, nrow(ChrInfo)), #리스트 PotentialOpt에 Dummy라는 이름의 데이터프레임 생성하고 설정
                                   MainStatP=rep(0, nrow(ChrInfo)), #주스탯, 주스탯퍼, 부스탯, 부스탯2, 뎀퍼, 보공, 방무, 크확, 크뎀, 공격력을 각 열로
                                   SubStat1=rep(0, nrow(ChrInfo)), 
                                   SubStat2=rep(0, nrow(ChrInfo)), 
                                   DMR=rep(0, nrow(ChrInfo)), 
                                   BDR=rep(0, nrow(ChrInfo)), 
                                   IGR=rep(0, nrow(ChrInfo)), 
                                   CRR=rep(0, nrow(ChrInfo)), 
                                   CDMR=rep(0, nrow(ChrInfo)), 
                                   ATK=rep(0, nrow(ChrInfo)), 
                                   row.names=ChrInfo$job, #행 이름은 ChrInfo의 job 열 값 사용
                                   stringsAsFactors=F) #문자열을 팩터로 변환하지 마
}

if(DPMCalcOption$Optimization == T & sum(names(PotentialOpt) == DPMCalcOption$SpecSet) == 0) {
  PotentialOpt[[length(PotentialOpt)+1]] <- data.frame(ATKP=rep(0, nrow(ChrInfo)), 
                                                       IGR=rep(0, nrow(ChrInfo)), 
                                                       BDR=rep(0, nrow(ChrInfo)), 
                                                       row.names=ChrInfo$job, 
                                                       stringsAsFactors=F) #리스트 PotentialOpt에 새로운 데이터 프레임 추가(더미 데이터 프레임과 비슷한 구조를 가졌음)
  HyperStatOpt[[length(HyperStatOpt)+1]] <- data.frame(MainStat=rep(0, nrow(ChrInfo)), 
                                                       MainStatP=rep(0, nrow(ChrInfo)), 
                                                       SubStat1=rep(0, nrow(ChrInfo)), 
                                                       SubStat2=rep(0, nrow(ChrInfo)), 
                                                       DMR=rep(0, nrow(ChrInfo)), 
                                                       BDR=rep(0, nrow(ChrInfo)), 
                                                       IGR=rep(0, nrow(ChrInfo)), 
                                                       CRR=rep(0, nrow(ChrInfo)), 
                                                       CDMR=rep(0, nrow(ChrInfo)), 
                                                       ATK=rep(0, nrow(ChrInfo)), 
                                                       row.names=ChrInfo$job, 
                                                       stringsAsFactors=F) #리스트 HyperStatOpt에 새로운 데이터 프레임 추가(더미 데이터 프레임과 비슷한 구조를 가졌음)
  names(PotentialOpt)[[length(PotentialOpt)]] <- DPMCalcOption$SpecSet
  names(HyperStatOpt)[[length(HyperStatOpt)]] <- DPMCalcOption$SpecSet #새로 추가한 데이터 프레임의 이름은 DPMCalcOption$SpecSet
} else if(DPMCalcOption$Optimization == F & sum(names(PotentialOpt) == DPMCalcOption$SpecSet) == 0) {
  stop("No Optimization Data : Set Optimization Option as True") #오류 메시지 출력하고 프로그램 중단
}