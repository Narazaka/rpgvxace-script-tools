■インストール

RPGツクールVX Aceのプロジェクト直下（`Game.rvproj2` があるフォルダ）にこの `_tools` フォルダをコピーします。

本ツールは `rv2sa` を前提ツールとしています。
注意事項や `_scripts/Scripts.conf.rb` の仕様については https://github.com/ctmk/rv2sa を参照して下さい。

■開発時

1. まず現在のスクリプト内容を普通のrubyファイルとして扱うようにします。

  * `Scripts_rvdata2_to_ruby_files.bat` を実行します。

  現在のスクリプト内容が `_scripts` にはき出されます。
  以後はこの `_scripts` をマスターデータとして扱い、スクリプトエディタは基本的に用いないこととします。

2. 開発用パッチをあてます。

  ゲーム実行前に `_scripts` の内容を `Scripts.rvdata2`に自動で書き戻す状態にします。

  *  `install_rvhook.bat` を実行します。

  これで、テストプレイするときに、 `_scripts` 内の内容が自動適用されるようになります。

3. 開発します。

  * スクリプトファイルを追加・削除・リネームした場合は、 `_scripts/Scripts.conf.rb` を編集してください。

■リリース時

1. 念のため、 `_scripts` の内容を `Scripts.rvdata2` に書き戻しておきます。

  * `ruby_files_to_Scripts_rvdata2.bat` を実行します。

2. 開発用パッチの当たっていない環境に戻します。

  * `uninstall_rvhook.bat` を実行します。

3. リリース作業をして下さい。

4. リリース作業が終わったら再び開発用環境にします。

  * `install_rvhook.bat` を実行します。

■ソース
rv2sa.exeは https://github.com/ctmk/rv2sa/releases/tag/ver.2.3.0
Game.exeは https://github.com/Narazaka/rvhook/releases/tag/v2.0.0
