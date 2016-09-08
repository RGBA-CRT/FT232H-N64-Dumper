# FT232H-N64-Dumper
N64 ROM Dumper using FT232H

## 概要
FT232HとMCP23S17を用いたN64の吸出し機です。ROMとSRAMの吸出しが一応できます。部品数も少なく、USB接続で高速な吸出しができます。
Windows向けです。

まだコードの整理はやっていません。

## 開発環境
	パーツ : AE-FT232HL + MCP23S17 (+ 2SA1015 + 10KΩ抵抗)
	開発言語：ActiveBasic ver4 + 自分用ライブラリ
	PC : HM55 + Windows10 32bit
	
	コンパイルにはこちらのライブラリが必要です。
	https://github.com/RGBA-CRT/RGBALib

##参考
以下のサイト、リポジトリを参考にしました。
 * 	[http://n64.icequake.net/mirror/www.crazynation.org/N64/]  
 * 	[https://github.com/sanni/cartreader/]  
 * 	[http://www.ftdichip.com/Support/FTDocuments.htm]  
 * 	[http://akizukidenshi.com/download/ds/microchip/mcp23017_mcp23s17.pdf]  
 * 	[http://www.hdl.co.jp/USB/mpsse_spi/]  

##接続
 * 	FT232H-ADBus0~3(SPI) <-> MCP23S17-SPI
 * 	FT232H-ADBus4~7  <-> N64[/WE /RE ALE_L ALE_H]
 * 	FT232H-ACBus0~7  <-> N64[AD0~7]
 * 	MCP23S17-GPIOA <-> N64[AD8~15]
 * 	MCP23S17-GPIOB <-> N64[EEP_CLK /RESET S_DAT] + N64Power

##画像
非常に適当な回路図
![回路図](https://raw.githubusercontent.com/RGBA-CRT/FT232H-N64-Dumper/master/Kairo.PNG "回路図")  
  
実行イメージ  
![SS](http://i.imgur.com/ydIlbni.jpg "スクショ")
