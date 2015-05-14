# random_colorscheme.vim
colorschemeをランダムに変更します。

##概要
*random_colorscheme* は、インストールされている`colorscheme`からランダムに1つを選択し、適用するプラグインです。

ずっと同じ`colorscheme`を使い続けることはマンネリに繋がり、また眠気も誘いやすくなりますので、作業効率低下のもとになります。
しかし、どの`colorscheme`に変更しようか悩む時間ももったいないと感じてしまい、結局同何もしないまま作業を続けてしまいます。
何でもいいから気分を変えたいと思い、このプラグインを作りました。

最新版:
https://github.com/yyotti/random_colorscheme.vim

##使い方
`:RandomColorschemeChange`を実行するだけです。

##コマンド
###:RandomColorschemeChange
インストールされている`colorscheme`から1つをランダムに選択し、変更します。

##TODO
- testを作成する
- 変更対象のスキーマを限定できるようにする。
ex) プリインストールされているものは除く、など
- タイマーで一定時間ごとに自動的に切り替えられるようにする。
