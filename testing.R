rm(list = ls())
require(dplyr)
require(data.table)
require(jsonlite)
library(httr)

playerlist<-c("9JJPJYJ9R","CGQYJCJP","YVVRCU8UJ","8GY2VPP9","8VCLLLR0G")
#clash royal

playerlist<-c("9JJPJYJ9R","CGQYJCJP","YVVRCU8UJ","8GY2VPP9","8VCLLLR0G")
v<-GET("https://api.clashroyale.com/v1/players/%239JJPJYJ9R/battlelog",
       add_headers(Authorization="key"))

rawToChar(v$content)
v1<-fromJSON(rawToChar(v$content))
vsave<-v1


player<-paste0("%23",playerlist[2])
ur<-modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",player,"/battlelog"))
modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",player,"battlelog"))

v<-GET(ur,add_headers(Authorization="key "))
rawToChar(v$content)
v
v1<-fromJSON(rawToChar(v$content))


ur<-modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",playerlist[1],"/battlelog"))
modify_url(ur,path = "/battlelog")
v1<-fromJSON(rawToChar(vv$content))


d <- c("20140205T084501.326Z","20200205T084501.326Z","20220205T084501.326Z")
timestamp <- strptime(d, tz = "UTC", "%Y-%m-%dT%H:%M:%OSZ")
t<-v1$battleTime[1]
t1<-strptime(v1$battleTime[1], tz = "UTC", "%Y%m%dT%H%M%OSZ")
t2<-strptime(t, tz = "UTC", "%Y%m%dT%H%M%OSZ")

Btime<-as.Date(v1$battleTime[1],"%Y%m%dT%H%M%OSZ")

tx<-v1$battleTime
tx1<-strptime(tx, tz = "UTC", "%Y%m%dT%H%M%OSZ")

d <- c("20140205T084501.326Z","20200205T084501.326Z","20220205T084501.326Z")
d[1]
d[2]
d1<-c()
strptime(d[1], tz = "UTC", "%Y%m%dT%H%M%OSZ")
d1[1]<-strptime(d[1], tz = "UTC", "%Y%m%dT%H%M%OSZ")
d1[2]<-strptime(d[2], tz = "UTC", "%Y%m%dT%H%M%OSZ")
d1[3]<-strptime(d[3], tz = "UTC", "%Y%m%dT%H%M%OSZ")
x<-strptime(d[1], tz = "UTC", "%Y%m%dT%H%M%OSZ")
nrow(v1)
tx<-append(tx,12,25)

Btimex<-as.Date(v1$battleTime[1],"%Y%m%dT%H%M%OSZ")

Btime<-append(Btime,as.Date(v1$battleTime[1],"%Y%m%dT%H%M%OSZ"),1)

Btime<-Btimex
Btime<-c()
Crw<-as.data.frame(v1$team[2])
xv$crowns





for (i in 1:length(playerlist)) {
  player<-paste0("%23",playerlist[i])
  ur<-modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",player,"/battlelog"))
  v<-GET(ur,
         add_headers(Authorization="Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImE1Yzg3NjMwLWMxNDUtNDFkOS04ZTQ1LTViZmFiMjU4ZDI4OSIsImlhdCI6MTY0Njc0NTIzNCwic3ViIjoiZGV2ZWxvcGVyL2JiMGYzODk3LWUzYjMtNTBlNy04ZmFiLWFmZWE5NTQ0OGI3ZSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyI4NS4yLjI0MS4yMzAiXSwidHlwZSI6ImNsaWVudCJ9XX0.5Ula5bsTRofuVSjiuJR9jLIboSQGDA-uuzJiIuIByssMTK9OdrmWCfdGtw4C_SIXIk1Gv2Q0osydHHjEs97StQ "))
  Btime<-c()
  crowns<-c()
  v1<-fromJSON(rawToChar(v$content))
  print(v1)
}




#main
p1<-c()


for (i in 1:length(playerlist)) {
  player<-paste0("%23",playerlist[i])
  pp<-playerlist[i]
  ur<-modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",player,"battlelog"))
  v<-GET(ur,
         add_headers(Authorization="Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImE1Yzg3NjMwLWMxNDUtNDFkOS04ZTQ1LTViZmFiMjU4ZDI4OSIsImlhdCI6MTY0Njc0NTIzNCwic3ViIjoiZGV2ZWxvcGVyL2JiMGYzODk3LWUzYjMtNTBlNy04ZmFiLWFmZWE5NTQ0OGI3ZSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyI4NS4yLjI0MS4yMzAiXSwidHlwZSI6ImNsaWVudCJ9XX0.5Ula5bsTRofuVSjiuJR9jLIboSQGDA-uuzJiIuIByssMTK9OdrmWCfdGtw4C_SIXIk1Gv2Q0osydHHjEs97StQ "))
  Btime<-c()
  crowns<-c()
  v1<-fromJSON(rawToChar(v$content))
  ID<-c()

  battletype<-c()
  for (i in 1:nrow(v1)) {ID[i]<-pp
    
  }
  
  for (i in 1:nrow(v1)) {
    battletype[i]<-v1$type[i]}
  
  for (i in 1:nrow(v1)) {
    Btime[i]<-v1$battleTime[i]
    
    if (v1$type[i] != "boatBattle"){
      Crw<-as.data.frame(v1$team[i])
      crowns[i]<-Crw$crowns
    }
    if (v1$type[i] == "boatBattle"){
      crowns[i]<-c(0)
    }
  }
  date<-c()
  for (i in 1:length(Btime)) {date[i]<-append(date,as.Date(Btime[i],tz="UTC","%Y%m%dT%H%M%OSZ",1))}
  r<-data.frame(crowns,Btime,date,battletype,ID)
  print(r)
  write.csv(r,paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\test\\",pp,"-",Sys.Date()))
  
  v1g<-as.data.frame(v1$gameMode)
  v1b<-as.data.frame(v1$arena)
  vx<-cbind(v1,v1b,v1g,crowns)
  vx$arena<- NULL
  vx$gameMode<- NULL
  vx$team<- NULL
  vx$opponent<- NULL
  write.csv(vx,paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\",pp,"-",Sys.Date()))
  
  assign(pp,vx)
  assign(paste0(pp,"1"),r)
 
  
}
rbind(YVVRCU8UJ1,`8GY2VPP91`)
  


as.character(pp)
assign(pp,vx)

paste0(pp,"x")<-vx
paste0(pp,"x")
v1$team
v1$opponent
v1$arena[1]
y<-as.data.frame(v1$team)
y1<-as.data.frame(v1$opponent[1])
v1g<-as.data.frame(v1$gameMode)
v1b<-as.data.frame(v1$arena)
vx<-cbind(v1,v1b,v1g)
vx$arena<- NULL
vx$gameMode<- NULL
vx$team<- NULL
vx$opponent<- NULL
write.csv(vx,paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\",pp,"-",Sys.Date()))


v1$gameMode

  vv<-c()
  1:length((playerlist))
  1:nrow(v1)

  for (i in 1:length(playerlist)) {
    player<-paste0("%23",playerlist[i])
    ur<-modify_url("https://api.clashroyale.com/v1/players/",path = c("v1","players",player,"battlelog"))
    v<-GET(ur,
           add_headers(Authorization="Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6Ijk2ZWU4YjhhLTQwOTUtNGFlMC1iMDg1LTAwZTBiZTA3N2VmMiIsImlhdCI6MTY0NzQzNzEzNSwic3ViIjoiZGV2ZWxvcGVyL2JiMGYzODk3LWUzYjMtNTBlNy04ZmFiLWFmZWE5NTQ0OGI3ZSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxNzguMTk3LjIwMC44OSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.hqnEvlDqm1XXkfrluGZlmB0SoUM75jhjKkpJpWPTxbxfJwpci-mzqpSOrjigTxcu-i3Nu7Qg-9W60WWC1cjvNg"))
    Btime<-c()
    crowns<-c()
    v1<-fromJSON(rawToChar(v$content))
    pp<-playerlist[i]
    
   
    battletype<-c()
    for (i in 1:nrow(v1)) {
      battletype[i]<-v1$type[i]}
    
    for (i in 1:nrow(v1)) {
      Btime[i]<-v1$battleTime[i]
      
      if (v1$type[i] != "boatBattle"){
        Crw<-as.data.frame(v1$team[i])
        crowns[i]<-Crw$crowns
      }
      if (v1$type[i] == "boatBattle"){
        crowns[i]<-c(0)
      }
    }
  
  date<-c()
  for (i in 1:length(Btime)) {date[i]<-append(date,as.Date(Btime[i],tz="UTC","%Y%m%dT%H%M%OSZ",1))}
  r<-data.frame(crowns,Btime,date,battletype,ID)
  print(r)
  write.csv(r,paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\test\\",pp,"-",Sys.Date()))
  v1g<-as.data.frame(v1$gameMode)
  v1b<-as.data.frame(v1$arena)
  vx<-cbind(v1,v1b,v1g,crowns)
  vx$arena<- NULL
  vx$gameMode<- NULL
  vx$team<- NULL
  vx$opponent<- NULL
  write.csv(vx,paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\",pp,"-",Sys.Date()))
  
  assign(pp,vx)
  assign(paste0(pp,"1"),r)
}

  
  
  
paste0("x",Sys.Date())
paste0("C:\Users\lucad\OneDrive\Bureau\master\data\test",Sys.Date())

Sys.Date()

write.csv(r,
          paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\test\\",playerlist[2],"-",Sys.Date())
          )
paste0("C:\\Users\\lucad\\OneDrive\\Bureau\\master\\data\\test\\",playerlist[1],"-",Sys.Date())

for (i in 1:nrow(v1)) {
  
}
warnings()

battletype<-c()
battletype[2]<-v1$type[2]


if (v1$type[34]=="boatBattle"){
  Btime<-append(Btime,0,34)
  print("yes")
}
crowns


Btime<-c()
crowns<-c()

for (i in 1:nrow(v1)) {
  Btime<-append(Btime,v1$battleTime[i],i)}

for (i in 1:nrow(v1)) {
  if (v1$type[i] == "boatBattle"){
    print("yes")
    print(i)
  }}
for (i in 1:nrow(v1)) {
  if (v1$type[i] != "boatBattle"){
    print("yes")
    print(i)
  }}

for (i in 1:nrow(v1)) {
  if (v1$type[i] != "boatBattle"){
    Crw<-as.data.frame(v1$team[i])
    crowns[i]<-Crw$crowns
  }}
for (i in 1:nrow(v1)) {
  if (v1$type[i] == "boatBattle"){
    crowns[i]<-c(0)
  }}


for (i in 1:nrow(v1)) {
  Btime[i]<-v1$battleTime[i]
  
  if (v1$type[i] != "boatBattle"){
    Crw<-as.data.frame(v1$team[i])
    crowns[i]<-Crw$crowns
  }
  if (v1$type[i] == "boatBattle"){
    crowns[i]<-c(0)
  }
}


v1$battleTime[3]
Crw<-as.data.frame(v1$team[26])
z<-c(1,2)



date<-c()

for (i in 1:length(Btime)) {date[i]<-as.Date(Btime[i],tz="UTC","%Y%m%dT%H%M%OSZ",1)}

(date,Btime[1],tz="UTC","%Y%m%dT%H%M%OSZ",1)
date[2]<-as.Date(Btime[1],tz="UTC","%Y%m%dT%H%M%OSZ",1)

x<-data.frame(crowns,Btime,date)
Btime[1]
as.Date(Btime[1],tz="UTC","%Y%m%dT%H%M%OSZ")
Btime




z<-c(v1$battleTime)






#tft

token <- "RGAPI-0ae4be2f-e774-4c05-99e2-26b8b7692542"
x<-GET("https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/Draric",
    add_headers(Authorization="bearer RGAPI-0ae4be2f-e774-4c05-99e2-26b8b7692542 "))



by_name = function(summonerName, region = self$region, dry_run = self$dry_run) {
  url <- get_url(
    url = glue::glue("{private$base_url}/by-name/{summonerName}") %>% glue,
    api = self$api,
    dry_run = dry_run
  )
  return(url)
}

url <- "https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/Draric"
api_key <- "RGAPI-0ae4be2f-e774-4c05-99e2-26b8b7692542"
res <- GET(url=url, add_headers('Authorization' = paste("Authorization: ", api_key)))
rawToChar(res$content)


