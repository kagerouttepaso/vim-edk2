
"構文マッチ
"syntax (keyword|region|match|...) {group} {keyword} ...
"keyword 決め打ち
"match {group} //
"region {group} start=// skip=// end=//
"
"入れ子
"構文マッチの最後に(contained|contains)
"contained 入れ子になるもの
"contains 入れ子で入ってくるもの
"
"構文に対するハイライト割り当て
"highlight link {group} {group-name} ...
"
"ファイルタイプテストを指定
let b:current_syntax = "bios"
"au! BufRead, BufNewFile *.test setfiletype test


"虫設定
"syntax region BiosString start=+"+ skip=+\\"+ end=+"+ contained

"//があったら行末までコメント
syntax region BiosLineComment start=+#+ end=+$+ contains=BiosString

syntax match BiosKeyword /\[.*\]/

syntax match BiosConditional /!import/
syntax match BiosConditional /!disable/
syntax match BiosConditional /!if/
syntax match BiosConditional /!else/
syntax match BiosConditional /!endif/



highlight link BiosLineComment Comment

"リンク
highlight link BiosComment        Comment        " コメント

highlight link BiosConstant       Constant       " 定数
highlight link BiosString         String         " 文字列定数
highlight link BiosCharacter      Character      " 文字定数: 'c', '\n'
highlight link BiosNumber         Number         " 数値定数: 234, 0xff
highlight link BiosBoolean        Boolean        " ブール値の定数: TRUE, false
highlight link BiosFloat          Float          " 不動小数点数の定数: 2.3e10

highlight link BiosIdentifier     Identifier     " 変数名
highlight link BiosFunction       Function       " 関数名(クラスメソッドを含む)

highlight link BiosStatement      Statement      " 命令文
highlight link BiosConditional    Conditional    " if, then, else, endif, switch, その他
highlight link BiosRepeat         Repeat         " for, do, while, その他
highlight link BiosLabel          Label          " case, default, その他
highlight link BiosOperator       Operator       " sizeof, +, *, その他
highlight link BiosKeyword        Keyword        " その他のキーワード
highlight link BiosException      Exception      " try, catch, throw

highlight link BiosPreProc        PreProc        " 一般的なプリプロセッサ命令
highlight link BiosInclude        Include        " #include プリプロセッサ
highlight link BiosDefine         Define         " #define プリプロセッサ
highlight link BiosMacro          Macro          " Defineと同値
highlight link BiosPreCondit      PreCondit      " プリプロセッサの #if, #else, #endif, その他

highlight link BiosType           Type           " int, long, char, その他
highlight link BiosStorageClass   StorageClass   " static, register, volatile, その他
highlight link BiosStructure      Structure      " struct, union, enum, その他
highlight link BiosTypedef        Typedef        " typedef宣言

highlight link BiosSpecial        Special        " 特殊なシンボル
highlight link BiosSpecialChar    SpecialChar    " 特殊な文字定数
highlight link BiosTag            Tag            " この上で CTRL-] を使うことができる
highlight link BiosDelimiter      Delimiter      " 注意が必要な文字
highlight link BiosSpecialComment SpecialComment " コメント内の特記事項
highlight link BiosDebug          Debug          " デバッグ命令

highlight link BiosUnderlined     Underlined     " 目立つ文章, HTMLリンク

highlight link BiosIgnore         Ignore         " (見た目上)空白, 不可視  |hl-Ignore|

highlight link BiosError          Error          " エラーなど、なんらかの誤った構造

highlight link BiosTodo           Todo           " 特別な注意が必要なもの; 大抵はTODO FIXME XXXなどのキーワード
