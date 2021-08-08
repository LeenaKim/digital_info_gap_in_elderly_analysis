setwd("F:/정보")

aa=read.csv("2018DATA_1일반.csv")
View(aa)
aa$데스크탑 = factor(aa$Q1A1,labels = c("보유","미보유"))
aa$노트북 = factor(aa$Q1A2,labels = c("보유","미보유"))
aa$이용가능기기 = factor(aa$Q2A11,labels = c("스마트폰","피쳐폰","없다"))

aa$스마트폰 = factor(aa$Q2A1,labels = c("보유","미보유"))
aa$스마트패드 = factor(aa$Q2A2,labels = c("보유","미보유"))
aa$주변기기 = factor(aa$Q2A3,labels = c("가능","불가능"))
aa$모바일환경설졍 = factor(aa$Q5A1,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$네트워크 = factor(aa$Q5A2,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$전송 = factor(aa$Q5A4,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$설치 = factor(aa$Q5A5,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$문서작성 = factor(aa$Q5A7,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$뉴스검색 = factor(aa$Q8A3,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$이메일 = factor(aa$Q8A4,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$미디어콘텐츠 = factor(aa$Q8A5,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$교육콘텐츠 = factor(aa$Q8A6,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$SNS = factor(aa$Q9B1,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$메신져 = factor(aa$Q9B2,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$블로그 = factor(aa$Q9B3,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$커뮤니티 = factor(aa$Q9B4,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))

aa$교통정보 = factor(aa$Q10B1,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$제품구매 = factor(aa$Q10B2,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$금융거래 = factor(aa$Q10B3,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$행정 = factor(aa$Q10B4,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))
aa$복지 = factor(aa$Q10B5,ordered=TRUE,labels = c("전혀","그렇지않다","그런편","매우그렇다"))

aa$성별 = factor(aa$A_SEX,labels = c("남자","여자"))
aa$연령 = factor(aa$A_AGE1,labels = c("19세 이하","20대","30대","40대","50대","60대 이상"))
aa$학력 = factor(aa$A_EDU1,labels = c("초졸","중졸","고졸","대졸"))
aa$지역별 = factor(aa$A_ARA, labels = c("서울","부산","대구","인천","광주","대전","울산","세종","경기","강원","충북","충남","전북","전남","경북","경남","제주"))

aa$지역규모별 = factor(aa$A_SIZ1,labels = c("시","군"))
aa$소득수준별 = factor(aa$A_INC1,ordered=TRUE,labels = c("100만미만","100~199만","200~299만","300~399만","400만 이상","무응답"))

aa$원하는교육= factor(aa$Q25A01,labels = c("pc/모바일","문서작성","정보검색","문서저장","정보보안","예약/예매","금융","정부행정","쇼핑","it기기","SNS","메신져","블로그","이미지/동영상","프로그래밍","앱개발","판매채널","ai스피커","드론","빅데이터","기타","없음"))


str(aa)
View(aa)

chisq.test(table(aa$소득수준별,aa$학력))

dd=data.frame(table(aa$지역별,aa$소득수준별))
table(aa$소득수준별,aa$휴대폰보유)

gg=aa$휴대폰보유
gg




dd
ff=data.frame(table(aa$지역별))
dd$평균=(round(dd$Freq/ff$Freq * 100,2))

table(aa$지역별,aa$SNS)
