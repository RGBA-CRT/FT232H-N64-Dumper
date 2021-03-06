# FT232H-N64-Dumper
N64 ROM Dumper using FTDI FT232H
 + http://rgbacrt.seesaa.net/article/441695249.html

## 概要 / About
FT232HとMCP23S17を用いたN64の吸出し機です。ROMとSRAMの吸出しができます。EEPROMには対応していません。部品数も少なく、USB接続で高速(420KB/s)な吸出しができます。  
ActiveBasic4で雑に書いたテストプログラムです。Windowsでしか動作しません。

This is N64 cart dumper using FTDI FT232H. It can dump ROM and SRAM by USB connection. 

## セーブデータに関する注意　/ Warning for save data
 * セーブデータ保護回路を省いた場合、SRAMを用いたソフト（時のオカリナなど）のセーブが飛ぶ可能性が高くなります。
 * 保護回路を入れたとしても消えるものは消えます。
 * Windows側でソフトを立ち上げ、[INSERT CART AND PRESS ENTER]の表示を見るまでカートリッジを挿入しないでください。
 * 吸出し中や、アクセスLEDが点灯中はカートリッジを抜かないでください。
 ---
 * If save data protection circuit is omitted, the possibility of break SRAM save game (ocarina of time etc.) will increase.
 * Do not insert the cartridge until you start up the software on the Windows side and look at the message of [INSERT CART AND PRESS ENTER].
 * Do not remove the cartridge during the access LED is lit.

## 開発環境 / Environment
	OS : Windows 7
	Parts : AE-FT232HL + MCP23S17 + EdgeConnector(N64) (+ 2SA1015 + 10KΩ reg)
	Language ： [ActiveBasic ver4](https://www.activebasic.com/) + RGBALib
	FT232H-Config ： QDC（kitahei88氏作><http://kitahei88.blog.fc2.com/blog-entry-124.html>）と同じ設定
	
 * コンパイルにはこちらのライブラリが必要です。depends following library.  
<https://github.com/RGBA-CRT/RGBALib>

## 参考 / Reference pages
以下のサイト、リポジトリを参考にしました。
 * 	[http://n64.icequake.net/mirror/www.crazynation.org/N64/]  
 * 	[https://github.com/sanni/cartreader/]  
 * 	[http://www.ftdichip.com/Support/FTDocuments.htm]  
 * 	[http://akizukidenshi.com/download/ds/microchip/mcp23017_mcp23s17.pdf]  
 * 	[http://www.hdl.co.jp/USB/mpsse_spi/]  

## 接続 / Connection
 * 	FT232H-ADBus0-3(SPI) <-> MCP23S17-SPI
 * 	FT232H-ADBus4-7  <-> N64[/WE /RE ALE_L ALE_H]
 * 	FT232H-ACBus0-7  <-> N64[AD0-7]
 * 	MCP23S17-GPIOA <-> N64[AD8~15]
 * 	MCP23S17-GPIOB <-> N64[EEP_CLK /RESET S_DAT] + N64Power

## 画像 / pict
非常に適当な回路図  
![回路図](https://raw.githubusercontent.com/RGBA-CRT/FT232H-N64-Dumper/master/Kairo.PNG "回路図")    
  
スクショ  
![SS](http://i.imgur.com/ydIlbni.jpg "スクショ")   
This is a screen shot of the old version, the transfer rate of the latest version is 420 KB/s  
