# FT232H-N64-Dumper
N64 ROM Dumper using FTDI FT232H
 + http://rgbacrt.seesaa.net/article/441695249.html

## About
部品点数が少なく手に入りやすい部品で作ったN64ROM吸い出し機です。
セーブデータの吸い出しに対応しており、SRAM/FLASH, v1.0以降はEEPROMも吸い出し可能です。書き込みは未実装。
FT232Hを使うことで、300～400KB/s程度の比較的速い速度で吸い出す事ができます。
ActiveBasic4で雑に書いたテストプログラムです。Windowsでしか動作しません。

This is N64 cart dumper using FTDI FT232H. It can dump ROM and SRAM/Flash and EEPROM by USB connection. 

![ss](https://user-images.githubusercontent.com/19349443/212477295-c5c14b61-5623-4d53-bb38-17cf9d9db5b5.png)

## Feature
### Supported
- N64 ROM Dump
- SAVE SRAM Dump
  - デザエモン3DのSRAM*3に対応
- SAVE FLASH Dump
- SAVE EEPROM Dump
- プロアクションリプレイのROM書き込み
  - プロアクションリプレイライトでのみ動作確認

### Not Supported
- SAVE SRAM/FLASH/EEPROM write
- Controller Pack dump
- 吸い出したROMのハッシュチェック

## 回路図 / Circuit
![回路図](https://raw.githubusercontent.com/RGBA-CRT/FT232H-N64-Dumper/master/Kairo_v1.0.png "回路図")    

- 部品の定数の調整、パスコンなどは適宜環境似合わせて調整してください。
- SRAM Protect Blockは省略可能です。省略した場合、SRAMのセーブデータは保証されません。
- EEPROM CLK Genは省略可能です。省略した場合、EEPROMのセーブデータの吸い出しはできません。
- 回路v1.0からEEPROMに対応しました。[回路をv0.0からv1.0更新する際のガイド](https://github.com/RGBA-CRT/FT232H-N64-Dumper/wiki/Circuit-v1.0)
- FT232HのEEPROMの設定が必要です。
   - FT_Progでconfig_FT232H.xmlを書き込んでください。[FT232H-EEPROM-config](https://github.com/RGBA-CRT/FT232H-N64-Dumper/wiki/FT232H-EEPROM-config)

## セーブデータに関する注意　/ Warning for save data
 * セーブデータ保護回路がある場合でも、SRAMを用いたソフト（時のオカリナなど）のセーブデータは破損しやすいため注意してください。
 * Windows側でソフトを立ち上げ、[INSERT CART AND PRESS ENTER]の表示を見るまでカートリッジを挿入しないでください。
 * 吸出し中や、アクセスLEDが点灯中はカートリッジを抜かないでください。
 ---
 * Even if there is a save data protection circuit, save data for software that uses SRAM (Ocarina of Time, etc.) is easily damaged, so be careful.
 * Do not insert the cartridge until you start up the software on the Windows side and look at the message of [INSERT CART AND PRESS ENTER].
 * Do not remove the cartridge during the access LED is lit.

## 開発環境 / dev env
コンパイルにはこちらのライブラリが必要です。depends following library.  
<https://github.com/RGBA-CRT/RGBALib>

## 参考 / Reference pages
以下のサイト、リポジトリを参考にしました。
 * 	[http://n64.icequake.net/mirror/www.crazynation.org/N64/]  
 * 	[https://github.com/sanni/cartreader/]  
 * 	[http://www.ftdichip.com/Support/FTDocuments.htm]  
 * 	[http://akizukidenshi.com/download/ds/microchip/mcp23017_mcp23s17.pdf]  
 * 	[http://www.hdl.co.jp/USB/mpsse_spi/]  
 * 	[http://www.qwertymodo.com/hardware-projects/n64/n64-controller]
 * 	[https://twitter.com/HelicopterP64/status/1608976626125275137]
 
 ----
Programmed by RGBA_CRT 2016-2023  
Project url: https://github.com/RGBA-CRT/FT232H-N64-Dumper
