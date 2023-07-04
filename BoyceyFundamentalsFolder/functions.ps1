Function UserFeedback {
  Param ($UserName = "Newcomer", $PercentComplete = 0)
  Write-Host "You're doing great, $UserName!"
  Write-Host "You're $PercentComplete% done!"
}

#Lottery game (Functions)
Function LotteryDraw {
  param ($min, $max, $quantity)
  for ($i = 0; $i -lt $quantity; $i++) {
    Get-Random -Minimum $min -Maximum $max

  }
}

Write-Host "Testing Lottery Generator"
LotteryDraw 1 10 5

Function MatchThree {

  Write-Host "Welcome to Match Three"
  LotteryDraw 1 20 3
}

MatchThree

Function MegaLotto {
  Write-Host "Welcome to the Mega Lotto"
  LotteryDraw 10000 99999 1
}

MegaLotto

Function MagicBall {
  Write-Host "Welcome to the Magic Ball game"
  LotteryDraw 10 99 6
}
MagicBall
