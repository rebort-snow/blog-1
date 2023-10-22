# LaTeX数学公式语法

[TOC]

下面是wolai支持的LaTeX数学公式部分语法。

## 数学重音 Accents

| $a′$ `a'`                     | $\tilde{a}$ `\tilde{a}`                               | $\mathring{g}$ `\mathring{g}`                   |
| ----------------------------- | ----------------------------------------------------- | ----------------------------------------------- |
| $a''$`a''`                    | $\widetilde{ac}$`\widetilde{ac}`                      | $\overgroup{AB}$ `\overgroup{AB}`               |
| $a^{\prime}$ `a^{\prime}`     | $\utilde{AB}$ `\utilde{AB}`                           | $\undergroup{AB}$ `\undergroup{AB}`             |
| $\acute{a}$ `\acute{a}`       | $\vec{F}$ `\vec{F}`                                   | $\Overrightarrow{AB}$ `\Overrightarrow{AB}`     |
| $\bar{y}$ `\bar{y}`           | $\overleftarrow{AB}$ `\overleftarrow{AB}`             | $\overrightarrow{AB}$ `\overrightarrow{AB}`     |
| $\breve{a}$ `\breve{a}`       | $\underleftarrow{AB}$ `\underleftarrow{AB}`           | $\underrightarrow{AB}$ `\underrightarrow{AB}`   |
| $\check{a}$ `\check{a}`       | $\overleftharpoon{ac}$ `\overleftharpoon{ac}`         | $\overrightharpoon{ac}$ `\overrightharpoon{ac}` |
| $\dot{a}$ `\dot{a}`           | $\overleftrightarrow{AB}$ `\overleftrightarrow{AB}`   | $\overbrace{AB}$ `\overbrace{AB}`               |
| $\ddot{a}$ `\ddot{a}`         | $\underleftrightarrow{AB}$ `\underleftrightarrow{AB}` | $\underbrace{AB}$ `\underbrace{AB}`             |
| $\grave{a}$ `\grave{a}`       | $\overline{AB}$ `\overline{AB}`                       | $\overlinesegment{AB}$ `\overlinesegment{AB}`   |
| $\hat{\theta}$ `\hat{\theta}` | $\underline{AB}$ `\underline{AB}`                     | $\underlinesegment{AB}$ `\underlinesegment{AB}` |
| $\widehat{ac}$ `\widehat{ac}` | $\widecheck{ac}$ `\widecheck{ac}`                     |                                                 |

### 在 `\text{…}` 内的重音方法

| $\text{\'{a}}$ `\'{a}`   | $\text{\~{a}}$ `\~{a}` | $\text{\.{a}}$ `\.{a}` | $\text{\H{a}}$ `\H{a}` |
| ------------------------ | ---------------------- | ---------------------- | ---------------------- |
| $\text{\`{a}}$ ``\`{a}`` | $\text{\={a}}$ `\={a}` | $\text{\"{a}}$ `\"{a}` | $\text{\v{a}}$ `\v{a}` |
| $\text{\^{a}}$ `\^{a}`   | $\text{\u{a}}$ `\u{a}` | $\text{\r{a}}$ `\r{a}` |                        |

## 定界符 Delimiters

| $(~)$`( )`                     | $\lparen~\rparen$ `\lparen \rparen`  | $⌈~⌉$ `⌈ ⌉`  | $\lceil~\rceil$ `\lceil \rceil`                    | $\uparrow$ `\uparrow`              |      |
| ------------------------------ | ------------------------------------ | ------------ | -------------------------------------------------- | ---------------------------------- | ---- |
| $[~~]$ `[ ]`                   | $\lbrack~~\rbrack$ `\lbrack \rbrack` | $⌊~⌋$ `⌊ ⌋`  | $\lfloor~\rfloor$ `\lfloor \rfloor`                | $\downarrow$ `\downarrow`          |      |
| $\{ \}$ `\{ \}`                | $\lbrace\rbrace$ `\lbrace \rbrace`   | $⎰⎱$ `⎰⎱`    | $\lmoustache\rmoustache$ `\lmoustache \rmoustache` | $\updownarrow$ `\updownarrow`      |      |
| $⟨~⟩$ `⟨ ⟩`                    | $\langle~\rangle$ `\langle \rangle`  | $⟮~ ⟯$ `⟮ ⟯` | $\lgroup~\rgroup$`\lgroup \rgroup`                 | $\Uparrow$ `\Uparrow`              |      |
| `|`$|$                         | $\vert$ \vert                        | ┌ ┐ ┌ ┐      | $\ulcorner \urcorner$ `\ulcorner \urcorner`        | $\Downarrow$ `\Downarrow`          |      |
| $\|$ \`\\                      | $\Vert$ `\Vert`                      | $└ ┘$ `└ ┘`  | $\llcorner \lrcorner$ `\llcorner \lrcorner`        | $\Updownarrow$ `\Updownarrow`      |      |
| $\lvert\rvert$ `\lvert \rvert` | $\lVert\rVert$ `\lVert \rVert`       | `\left.`     | `\right.`                                          | $\backslash$ `\backslash`          |      |
| $\lang~\rang$ `\lang \rang`    | $\lt \gt$ `\lt \gt`                  | $⟦~⟧$ `⟦ ⟧`  | $\llbracket~\rrbracket$`\llbracket \rrbracket`     | $\lBrace~\rBrace$`\lBrace \rBrace` |      |

### 定界符的尺寸

$\left(\LARGE{AB}\right)$`\left(\LARGE{AB}\right)`

$( \big( \Big( \bigg( \Bigg($`( \big( \Big( \bigg( \Bigg(`

| `\left`   | `\big`  | `\bigl`  | `\bigm`  | `\bigr`  |
| --------- | ------- | -------- | -------- | -------- |
| `\middle` | `\Big`  | `\Bigl`  | `\Bigm`  | `\Bigr`  |
| `\right`  | `\bigg` | `\biggl` | `\biggm` | `\biggr` |
|           | `\Bigg` | `\Biggl` | `\Biggm` | `\Biggr` |

## 关系运算 Relations

### 关系运算符

| $=$ `=`                        | $\eqcirc$ `\eqcirc`               | $\lesseqgtr$ `\lesseqgtr`         | $\sqsupset$ `\sqsupset`                 |
| ------------------------------ | --------------------------------- | --------------------------------- | --------------------------------------- |
| $<$ `<`                        | $\eqcolon$ `\eqcolon`             | $\lesseqqgtr$ `\lesseqqgtr`       | $\sqsupseteq$ `\sqsupseteq`             |
| $>$ `>`                        | $\Eqcolon$ `\Eqcolon`             | $\lessgtr$ `\lessgtr`             | $\Subset$ `\Subset`                     |
| $:$ `:`                        | $\eqqcolon$ `\eqqcolon`           | $\lesssim$ `\lesssim`             | $\subset$ `\subset` 或 `\sub`           |
| $\approx$ `\approx`            | $\Eqqcolon$ `\Eqqcolon`           | $\ll$ `\ll`                       | $\subseteq$ `\subseteq` 或 `\sube`      |
| $\approxeq$ `\approxeq`        | $\eqsim$ `\eqsim`                 | $\lll$ `\lll`                     | $\subseteqq$ `\subseteqq`               |
| $\asymp$ `\asymp`              | $\eqslantgtr$ `\eqslantgtr`       | $\llless$ `\llless`               | $\succ$ `\succ`                         |
| $\backepsilon$ `\backepsilon`  | $\eqslantless$ `\eqslantless`     | $\lt$ `\lt`                       | $\succapprox$ `\succapprox`             |
| $\backsim$ `\backsim`          | $\equiv$ `\equiv`                 | $\mid$ `\mid`                     | $\succcurlyeq$ `\succcurlyeq`           |
| $\backsimeq$ `\backsimeq`      | $\fallingdotseq$ `\fallingdotseq` | $\models$ `\models`               | $\succeq$ `\succeq`                     |
| $\between$ `\between`          | $\frown$ `\frown`                 | $\multimap$ `\multimap`           | $\succsim$ `\succsim`                   |
| $\bowtie$ `\bowtie`            | $\ge$ `\ge`                       | $\owns$ `\owns`                   | $\Supset$ `\Supset`                     |
| $\bumpeq$ `\bumpeq`            | $\geq$ `\geq`                     | $\parallel$ `\parallel`           | $\supset$ `\supset`                     |
| $\Bumpeq$ `\Bumpeq`            | $\geqq$ `\geqq`                   | $\perp$ `\perp`                   | $\supseteq$ `\supseteq` 或 `\supe`      |
| $\circeq$ `\circeq`            | $\geqslant$ `\geqslant`           | $\pitchfork$ `\pitchfork`         | $\supseteqq$ `\supseteqq`               |
| $\colonapprox$ `\colonapprox`  | $\gg$ `\gg`                       | $\prec$ `\prec`                   | $\thickapprox$ `\thickapprox`           |
| $\Colonapprox:$ `\Colonapprox` | $\ggg$ `\ggg`                     | $\precapprox$ `\precapprox`       | $\thicksim$ `\thicksim`                 |
| $\coloneq$ `\coloneq`          | $\gggtr$ `\gggtr`                 | $\preccurlyeq$ `\preccurlyeq`     | $\trianglelefteq$ `\trianglelefteq`     |
| $\Coloneq$ `\Coloneq`          | $\gt$ `\gt`                       | $\preceq$ `\preceq`               | $\triangleq$ `\triangleq`               |
| $\coloneqq$ `\coloneqq`        | $\gtrapprox$ `\gtrapprox`         | $\precsim$ `\precsim`             | $\trianglerighteq$ `\trianglerighteq`   |
| $\Coloneqq$ `\Coloneqq`        | $\gtreqless$ `\gtreqless`         | $\propto$ `\propto`               | $\varpropto$ `\varpropto`               |
| $\colonsim$ `\colonsim`        | $\gtreqqless$ `\gtreqqless`       | $\risingdotseq$ `\risingdotseq`   | $\vartriangle$ `\vartriangle`           |
| $\Colonsim$ `\Colonsim`        | $\gtrless$ `\gtrless`             | $\shortmid$ `\shortmid`           | $\vartriangleleft$ `\vartriangleleft`   |
| $\cong$ `\cong`                | $\gtrsim$ `\gtrsim`               | $\shortparallel$ `\shortparallel` | $\vartriangleright$ `\vartriangleright` |
| $\curlyeqprec$ `\curlyeqprec`  | $\in$ `\in` or `\isin`            | $\sim$ `\sim`                     | $\vcentcolon$ `\vcentcolon`             |
| $\curlyeqsucc$ `\curlyeqsucc`  | $\Join$ `\Join`                   | $\simeq$ `\simeq`                 | $\vdash$ `\vdash`                       |
| $\dashv$ `\dashv`              | $\le$ `\le`                       | $\smallfrown$ `\smallfrown`       | $\vDash$ `\vDash`                       |
| $\dblcolon$ `\dblcolon`        | $\leq$ `\leq`                     | $\smallsmile$ `\smallsmile`       | $\Vdash$ `\Vdash`                       |
| $\doteq$ `\doteq`              | $\leqq$ `\leqq`                   | $\smile$ `\smile`                 | $\Vvdash$ `\Vvdash`                     |
| $\Doteq$ `\Doteq`              | $\leqslant$ `\leqslant`           | $\sqsubset$ `\sqsubset`           | $\stackrel{!}{=}$`\stackrel{!}{=}`      |
| $\doteqdot$ `\doteqdot`        | $\lessapprox$ `\lessapprox`       | $\sqsubseteq$ `\sqsubseteq`       |                                         |

可直接输入：=<>:∈∋∝∼∽≂≃≅≈≊≍≎≏≐≑≒≓≖≗≜≡≤≥≦≧≫≬≳≷≺≻≼≽≾≿
⊂⊃⊆⊇⊏⊐⊑⊒⊢⊣⊩⊪⊸⋈⋍⋐⋑⋔⋙⋛⋞⋟⌢⌣⩾⪆⪌⪕⪖⪯⪰⪷⪸⫅⫆≲⩽⪅≶⋚⪋⊥⊨ ≔ ≕ ⩴

### 否定式关系运算符

| $\not =$`\not =`          |                                     |                                         |                                   |
| ------------------------- | ----------------------------------- | --------------------------------------- | --------------------------------- |
| $\gnapprox$ `\gnapprox`   | $\ngeqslant$ `\ngeqslant`           | $\nsubseteq$ `\nsubseteq`               | $\precneqq$ `\precneqq`           |
| $\gneq$ `\gneq`           | $\ngtr$ `\ngtr`                     | $\nsubseteqq$ `\nsubseteqq`             | $\precnsim$ `\precnsim`           |
| $\gneqq$ `\gneqq`         | $\nleq$ `\nleq`                     | $\nsucc$ `\nsucc`                       | $\subsetneq$ `\subsetneq`         |
| $\gnsim$ `\gnsim`         | $\nleqq$ `\nleqq`                   | $\nsucceq$ `\nsucceq`                   | $\subsetneqq$ `\subsetneqq`       |
| $\gvertneqq$ `\gvertneqq` | $\nleqslant$ `\nleqslant`           | $\nsupseteq$ `\nsupseteq`               | $\succnapprox$ `\succnapprox`     |
| $\lnapprox$ `\lnapprox`   | $\nless$ `\nless`                   | $\nsupseteqq$ `\nsupseteqq`             | $\succneqq$ `\succneqq`           |
| $\lneq$ `\lneq`           | $\nmid$ `\nmid`                     | $\ntriangleleft$ `\ntriangleleft`       | $\succnsim$ `\succnsim`           |
| $\lneqq$ `\lneqq`         | $\notin$ `\notin`                   | $\ntrianglelefteq$ `\ntrianglelefteq`   | $\supsetneq$ `\supsetneq`         |
| $\lnsim$ `\lnsim`         | $\notni$ `\notni`                   | $\ntriangleright$ `\ntriangleright`     | $\supsetneqq$ `\supsetneqq`       |
| $\lvertneqq$ `\lvertneqq` | $\nparallel$ `\nparallel`           | $\ntrianglerighteq$ `\ntrianglerighteq` | $\varsubsetneq$ `\varsubsetneq`   |
| $\ncong$ `\ncong`         | $\nprec$ `\nprec`                   | $\nvdash$ `\nvdash`                     | $\varsubsetneqq$ `\varsubsetneqq` |
| $\ne$ `\ne`               | $\npreceq$ `\npreceq`               | $\nvDash$ `\nvDash`                     | $\varsupsetneq$ `\varsupsetneq`   |
| $\neq$ `\neq`             | $\nshortmid$ `\nshortmid`           | $\nVDash$ `\nVDash`                     | $\varsupsetneqq$ `\varsupsetneqq` |
| $\ngeq$ `\ngeq`           | $\nshortparallel$ `\nshortparallel` | $\nVdash$ `\nVdash`                     |                                   |
| $\ngeqq$ `\ngeqq`         | $\nsim$ `\nsim`                     | $\precnapprox$ `\precnapprox`           |                                   |

可直接输入：∋∤∦≁≆=≨≩≮≯≰≱⊀⊁⊈⊉⊊⊋⊬⊭⊮⊯⋠⋡⋦⋧⋨⋩⋬⋭⪇⪈⪉⪊⪵⪶⪹⪺⫋⫌

### 箭头

| $\circlearrowleft$ `\circlearrowleft`   | $\leftharpoonup$ `\leftharpoonup`             | $\rArr$ `\rArr`                           |
| --------------------------------------- | --------------------------------------------- | ----------------------------------------- |
| $\circlearrowright$ `\circlearrowright` | $\leftleftarrows$ `\leftleftarrows`           | $\rarr$ `\rarr`                           |
| $\curvearrowleft$ `\curvearrowleft`     | $\leftrightarrow$ `\leftrightarrow`           | $\restriction$ `\restriction`             |
| $\curvearrowright$ `\curvearrowright`   | $\Leftrightarrow$ `\Leftrightarrow`           | $\rightarrow$ `\rightarrow`               |
| $\Darr$ `\Darr`                         | $\leftrightarrows$ `\leftrightarrows`         | $\Rightarrow$ `\Rightarrow`               |
| $\dArr$ `\dArr`                         | $\leftrightharpoons$ `\leftrightharpoons`     | $\rightarrowtail$ `\rightarrowtail`       |
| $\darr$ `\darr`                         | $\leftrightsquigarrow$ `\leftrightsquigarrow` | $\rightharpoondown$ `\rightharpoondown`   |
| $\dashleftarrow$ `\dashleftarrow`       | $\Lleftarrow$ `\Lleftarrow`                   | $\rightharpoonup$ `\rightharpoonup`       |
| $\dashrightarrow$ `\dashrightarrow`     | $\longleftarrow$ `\longleftarrow`             | $\rightleftarrows$ `\rightleftarrows`     |
| $\downarrow$ `\downarrow`               | $\Longleftarrow$ `\Longleftarrow`             | $\rightleftharpoons$ `\rightleftharpoons` |
| $\Downarrow$ `\Downarrow`               | $\longleftrightarrow$ `\longleftrightarrow`   | $\rightrightarrows$ `\rightrightarrows`   |
| $\downdownarrows$ `\downdownarrows`     | $\Longleftrightarrow$ `\Longleftrightarrow`   | $\rightsquigarrow$ `\rightsquigarrow`     |
| $\downharpoonleft$ `\downharpoonleft`   | $\longmapsto$ `\longmapsto`                   | $\Rrightarrow$ `\Rrightarrow`             |
| $\downharpoonright$ `\downharpoonright` | $\longrightarrow$ `\longrightarrow`           | $\Rsh$ `\Rsh`                             |
| $\gets$ `\gets`                         | $\Longrightarrow$ `\Longrightarrow`           | $\searrow$ `\searrow`                     |
| $\Harr$ `\Harr`                         | $\looparrowleft$ `\looparrowleft`             | $\swarrow$ `\swarrow`                     |
| $\hArr$ `\hArr`                         | $\looparrowright$ `\looparrowright`           | $\to$ `\to`                               |
| $\harr$ `\harr`                         | $\Lrarr$ `\Lrarr`                             | $\twoheadleftarrow$ `\twoheadleftarrow`   |
| $\hookleftarrow$ `\hookleftarrow`       | $\lrArr$ `\lrArr`                             | $\twoheadrightarrow$ `\twoheadrightarrow` |
| $\hookrightarrow$ `\hookrightarrow`     | $\lrarr$ `\lrarr`                             | $\Uarr$ `\Uarr`                           |
| $\iff$ `\iff`                           | $\Lsh$ `\Lsh`                                 | $\uArr$ `\uArr`                           |
| $\impliedby$ `\impliedby`               | $\mapsto$ `\mapsto`                           | $\uarr$ `\uarr`                           |
| $\implies$ `\implies`                   | $\nearrow$ `\nearrow`                         | $\uparrow$ `\uparrow`                     |
| $\Larr$ `\Larr`                         | $\nleftarrow$ `\nleftarrow`                   | $\Uparrow$ `\Uparrow`                     |
| $\lArr$ `\lArr`                         | $\nLeftarrow$ `\nLeftarrow`                   | $\updownarrow$ `\updownarrow`             |
| $\larr$ `\larr`                         | $\nleftrightarrow$ `\nleftrightarrow`         | $\Updownarrow$ `\Updownarrow`             |
| $\leadsto$ `\leadsto`                   | $\nLeftrightarrow$ `\nLeftrightarrow`         | $\upharpoonleft$ `\upharpoonleft`         |
| $\leftarrow$ `\leftarrow`               | $\nrightarrow$ `\nrightarrow`                 | $\upharpoonright$ `\upharpoonright`       |
| $\Leftarrow$ `\Leftarrow`               | $\nRightarrow$ `\nRightarrow`                 | $\upuparrows$ `\upuparrows`               |
| $\leftarrowtail$ `\leftarrowtail`       | $\nwarrow$ `\nwarrow`                         |                                           |
| $\leftharpoondown$ `\leftharpoondown`   | $\Rarr$ `\Rarr`                               |                                           |

可直接输入：←↑→↓↔↕↖↗↘↙↚↛↞↠↢↣↦↩↪↫↬↭↮↰↱↶↷↺↻↼↽↾↾↿⇀⇁⇂⇃⇄⇆⇇⇈⇉⇊⇋⇌
⇍⇎⇏⇐⇑⇒⇓⇔⇕⇚⇛⇝⇠⇢⟵⟶⟷⟸⟹⟺⟼ ↽

### 可延伸箭头

| $\xleftarrow{abc}$ `\xleftarrow{abc}`                 | $\xrightarrow[under]{over}$ `\xrightarrow[under]{over}` |
| ----------------------------------------------------- | ------------------------------------------------------- |
| $\xLeftarrow{abc}$ `\xLeftarrow{abc}`                 | $\xRightarrow{abc}$ `\xRightarrow{abc}`                 |
| $\xleftrightarrow{abc}$ `\xleftrightarrow{abc}`       | $\xLeftrightarrow{abc}$ `\xLeftrightarrow{abc}`         |
| $\xhookleftarrow{abc}$ `\xhookleftarrow{abc}`         | $\xhookrightarrow{abc}$ `\xhookrightarrow{abc}`         |
| $\xtwoheadleftarrow{abc}$ `\xtwoheadleftarrow{abc}`   | $\xtwoheadrightarrow{abc}$ `\xtwoheadrightarrow{abc}`   |
| $\xleftharpoonup{abc}$ `\xleftharpoonup{abc}`         | $\xrightharpoonup{abc}$ `\xrightharpoonup{abc}`         |
| $\xleftharpoondown{abc}$ `\xleftharpoondown{abc}`     | $\xrightharpoondown{abc}$ `\xrightharpoondown{abc}`     |
| $\xleftrightharpoons{abc}$ `\xleftrightharpoons{abc}` | $\xrightleftharpoons{abc}$ `\xrightleftharpoons{abc}`   |
| $\xtofrom{abc}$ `\xtofrom{abc}`                       | $\xmapsto{abc}$ `\xmapsto{abc}`                         |
| $\xlongequal{abc}$ `\xlongequal{abc}`                 |                                                         |

可延伸箭头都可以以和 `\xrightarrow[under]{over}`同样的方式接受一个可选参数。



## 环境 Environments

![image-20221028105325579](http://cdn.nidhogg-110.cn/typora/image-20221028105325579.png)

![image-20221028105342782](http://cdn.nidhogg-110.cn/typora/image-20221028105342782.png)

## 字母与统一码 Letters and Unicode

可直接输入：ΩABΓΔEZHΘIKΛMNΞOΠPΣTΥΦXΨΩ α β γ δ ϵ ζ η θ ι κ λ μ ν ξ o π ρ σ τ υ ϕ χ ψ ω ε ϑ ϖ ϱ ς φ ϝ

| $\Alpha$ `\Alpha`           | $\Beta$ `\Beta`         | $\Gamma$ `\Gamma`       | $\Delta$ `\Delta`           |
| --------------------------- | ----------------------- | ----------------------- | --------------------------- |
| $\Epsilon$ `\Epsilon`       | $\Zeta$ `\Zeta`         | $\Eta$ `\Eta`           | $\Theta$ `\Theta`           |
| $\Iota$ `\Iota`             | $\Kappa$ `\Kappa`       | $\Lambda$ `\Lambda`     | $\Mu$ `\Mu`                 |
| $\Nu$ `\Nu`                 | $\Xi$ `\Xi`             | $\Omicron$ `\Omicron`   | $\Pi$ `\Pi`                 |
| $\Rho$ `\Rho`               | $\Sigma$ `\Sigma`       | $\Tau$ `\Tau`           | $\Upsilon$ `\Upsilon`       |
| $\Phi$ `\Phi`               | $\Chi$ `\Chi`           | $\Psi$ `\Psi`           | $\Omega$ `\Omega`           |
| $\varGamma$ `\varGamma`     | $\varDelta$ `\varDelta` | $\varTheta$ `\varTheta` | $\varLambda$ `\varLambda`   |
| $\varXi$ `\varXi`           | $\varPi$ `\varPi`       | $\varSigma$ `\varSigma` | $\varUpsilon$ `\varUpsilon` |
| $\varPhi$ `\varPhi`         | $\varPsi$ `\varPsi`     | $\varOmega$ `\varOmega` |                             |
| $\alpha$ `\alpha`           | $\beta$ `\beta`         | $\gamma$ `\gamma`       | $\delta$ `\delta`           |
| $\epsilon$ `\epsilon`       | $\zeta$ `\zeta`         | $\eta$ `\eta`           | $\theta$ `\theta`           |
| $\iota$ `\iota`             | $\kappa$ `\kappa`       | $\lambda$ `\lambda`     | $\mu$ `\mu`                 |
| $\nu$ `\nu`                 | $\xi$ `\xi`             | $\omicron$ `\omicron`   | $\pi$ `\pi`                 |
| $\rho$ `\rho`               | $\sigma$ `\sigma`       | $\tau$ `\tau`           | $\upsilon$ `\upsilon`       |
| $\phi$ `\phi`               | $\chi$ `\chi`           | $\psi$ `\psi`           | $\omega$ `\omega`           |
| $\varepsilon$ `\varepsilon` | $\varkappa$ `\varkappa` | $\vartheta$ `\vartheta` | $\thetasym$ `\thetasym`     |
| $\varpi$ `\varpi`           | $\varrho$ `\varrho`     | $\varsigma$ `\varsigma` | $\varphi$ `\varphi`         |
| $\digamma$ `\digamma`       |                         |                         |                             |

### 其他字母

| $\imath$ `\imath`     | $\nabla$ `\nabla`     | $\Im$ `\Im`           | $\Reals$ `\Reals`         | $\text{\OE}$ `\text{\OE}` |
| --------------------- | --------------------- | --------------------- | ------------------------- | ------------------------- |
| $\jmath$ `\jmath`     | $\partial$ `\partial` | $\image$ `\image`     | $\wp$ `\wp`               | $\text{\o}$ `\text{\o}`   |
| $\aleph$ `\aleph`     | $\Game$ `\Game`       | $\Bbbk$ `\Bbbk`       | $\weierp$ `\weierp`       | $\text{\O}$ `\text{\O}`   |
| $\alef$ `\alef`       | $\Finv$ `\Finv`       | $\N$ `\N`             | $\Z$ `\Z`                 | $\text{\ss}$ `\text{\ss}` |
| $\alefsym$ `\alefsym` | $\cnums$ `\cnums`     | $\natnums$ `\natnums` | $\text{\aa}$ `\text{\aa}` | $\text{\i}$ `\text{\i}`   |
| $\beth$ `\beth`       | $\Complex$ `\Complex` | $\R$ `\R`             | $\text{\AA}$ `\text{\AA}` | $\text{\j}$ `\text{\j}`   |
| $\gimel$ `\gimel`     | $\ell$ `\ell`         | $\Re$ `\Re`           | $\text{\ae}$ `\text{\ae}` |                           |
| $\daleth$ `\daleth`   | $\hbar$ `\hbar`       | $\real$ `\real`       | $\text{\AE}$ `\text{\AE}` |                           |
| $\eth$ `\eth`         | $\hslash$ `\hslash`   | $\reals$ `\reals`     | $\text{\oe}$ `\text{\oe}` |                           |

可直接输入：∂∇ℑℲℵℶℷℸ⅁ℏð ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖÙÚÛÜÝÞßàáâãäåçèéêëìíîïðñòóôöùúûüýþÿ

### Unicode数学字母与数字符号

[https://pan.baidu.com/disk/home?from=newversion\&stayAtHome=true#/all?path=%2F\&vmode=list](https://pan.baidu.com/disk/home?from=newversion\&stayAtHome=true#/all?path=%2F\&vmode=list "https://pan.baidu.com/disk/home?from=newversion\&stayAtHome=true#/all?path=%2F\&vmode=list")

| **项**   | **范围**                | **项**   | **范围**                |
| -------- | ----------------------- | -------- | ----------------------- |
| 加粗     | $\text{𝐀-𝐙 𝐚-𝐳 𝟎-𝟗}$    | 双线     | $\text{𝔸-}ℤ\ 𝕜$         |
| 斜体     | $\text{𝐴-𝑍 𝑎-𝑧}$        | 衬线     | $\text{𝖠-𝖹 𝖺-𝗓 𝟢-𝟫}$    |
| 斜体加粗 | $\text{𝑨-𝒁 𝒂-𝒛}$        | 衬线加粗 | $ \text{𝗔-𝗭 𝗮-𝘇 𝟬-𝟵}  $ |
| 花体     | $\TEX$                  | 衬线斜体 | $\text{𝘈-𝘡 𝘢-𝘻}$        |
| 分形     | $\text{𝔄-}ℨ\text{ 𝔞-𝔷}$ | 等宽     | $\text{𝙰-𝚉 𝚊-𝚣 𝟶-𝟿}$    |

## 布局 Layouts

### 注解

| $\cancel{5}$ `\cancel{5}`       | $\overbrace{a+b+c}^{\text{note}}$ `\overbrace{a+b+c}^{\text{note}}` |
| ------------------------------- | ------------------------------------------------------------ |
| $\bcancel{5}$ `\bcancel{5}`     | $\underbrace{a+b+c}_{\text{note}}$ `\underbrace{a+b+c}_{\text{note}}` |
| $\xcancel{ABC}$ `\xcancel{ABC}` | $\not =$ `\not =`                                            |
| $\sout{abc}$ `\sout{abc}`       | $\boxed{\pi=\frac c d}$ `\boxed{\pi=\frac c d}`              |

`\tag{hi} x+y^{2x}`

$$
\tag{hi} x+y^{2x}
$$

`\tag*{hi} x+y^{2x}`
$$
\tag*{hi} x+y^{2x}
$$

### 换行

KaTeX 0.10.0+将在关系或二进制运算符（例如“ =”或“ +”）之后的内联公式中自动插入换行符。可以通过`\nobreak`或将公式放在一对大括号中来抑制它们，例如`{F=ma}`。 `\allowbreak`将允许在关系或运算符以外的其他位置自动换行。&#x20;

硬换行符是 `\\` 和 `\newline`。&#x20;

在行显示模式中，KaTeX不会插入自动换行符。当渲染选项`strict:true`时，它将忽略显示硬换行。

### 垂直布局

| $x_n$`x_n`                 | $\stackrel{!}{=}$`\stackrel{!}{=}` | $a \atop b$`a \atop b`                                       |
| -------------------------- | ---------------------------------- | ------------------------------------------------------------ |
| $e^x$`e^x`                 | $\overset{!}{=}$`\overset{!}{=}`   | \$ a\raisebox{0.25em}{b}c                                    |
| \$`a\raisebox{0.25em}{b}c` |                                    |                                                              |
| $_u^o$`_u^o`               | $\underset{!}{=}$`\underset{!}{=}` | $\sum_{\substack{0<i<m\\0<j<n}}$`\sum_{\substack{0<i<m\\0<j<n}}` |

如果 `\raisebox`的第二个参数嵌套在`$…$`分隔符内，则可以包含数学运算，例如`\raisebox {0.25em} {$\frac a b$}`

### 重叠和间距

| ${=}\mathllap{/\,}$`{=}\mathllap{/\,}` | $\left(x^{\smash{2}}\right)$`\left(x^{\smash{2}}\right)` |
| -------------------------------------- | -------------------------------------------------------- |
| $\mathrlap{\,/}{=}$`\mathrlap{\,/}{=}` | $\sqrt{\smash[b]{y}}$`\sqrt{\smash[b]{y}}`               |

$$
\sum_{\mathclap{1\le i\le j\le n}} x_{ij}
$$

`\sum_{\mathclap{1\le i\le j\le n}} x_{ij}`

KaTeX还支持 `\llap`，`\rlap`和 `\clap`，但是它们仅支持文本参数而非公式。

#### 间距

| **函数**        | **效果**     | **函数**             | **说明**              |
| --------------- | ------------ | -------------------- | --------------------- |
| `\,`            | ³∕₁₈ em 间距 | `\kern{distance}`    | 空格，宽度=`distance` |
| `\thinspace`    | ³∕₁₈ em 间距 | `\mkern{distance}`   | 空格，宽度=`distance` |
| `>`             | ⁴∕₁₈ em 间距 | `\mskip{distance}`   | 空格，宽度=`distance` |
| `\:`            | ⁴∕₁₈ em 间距 | `\hskip{distance}`   | 空格，宽度=`distance` |
| `\medspace`     | ⁴∕₁₈ em 间距 | `\hspace{distance}`  | 空格，宽度=`distance` |
| `\;`            | ⁵∕₁₈ em 间距 | `\hspace*{distance}` | 空格，宽度=`distance` |
| `\thickspace`   | ⁵∕₁₈ em 间距 | `\phantom{content}`  | 根据`content`调整尺寸 |
| `\enspace`      | ½ em 间距    | `\hphantom{content}` | 根据`content`调整宽度 |
| `\quad`         | 1 em 间距    | `\vphantom{content}` | 根据`content`调整高度 |
| `\qquad`        | 2 em 间距    | `\!`                 | – ³∕₁₈ em 间距        |
| `~`             | 不换行空格   | `\negthinspace`      | – ³∕₁₈ em 间距        |
| `<space>`       | 空格         | `\negmedspace`       | – ⁴∕₁₈ em 间距        |
| `\nobreakspace` | 不换行空格   | `\negthickspace`     | – ⁵∕₁₈ em 间距        |

#### 注意

`distance`可以与任意KaTeX单位联用。

`\kern`，`\mkern`，`\mskip`和 `\hspace`接受无括号的距离，例如：`\kern1em`。&#x20;

`\mkern`和 `\mskip`在文本模式下不起作用，并且若使用了除`mu`以外的任何单位，将显示控制台警告。

## 逻辑与集合论 Logic and Set Theory

# 

| $\forall$ `\forall`   | $\complement$ `\complement` | $\therefore$ `\therefore`           | $\emptyset$ `\emptyset`     |
| --------------------- | --------------------------- | ----------------------------------- | --------------------------- |
| $\exists$ `\exists`   | $\subset$ `\subset`         | $\because$ `\because`               | $\empty$ `\empty`           |
| $\exist$ `\exist`     | $\supset$ `\supset`         | $\mapsto$ `\mapsto`                 | $\varnothing$ `\varnothing` |
| $\nexists$ `\nexists` | $\mid$ `\mid`               | $\to$ `\to`                         | $\implies$ `\implies`       |
| $\in$ `\in`           | $\land$ `\land`             | $\gets$ `\gets`                     | $\impliedby$ `\impliedby`   |
| $\isin$ `\isin`       | $\lor$ `\lor`               | $\leftrightarrow$ `\leftrightarrow` | $\iff$ `\iff`               |
| $\notin$ `\notin`     | $\ni$ `\ni`                 | $\notni$ `\notni`                   | $\neg$ `\neg` or `\lnot`    |

可直接输入：∀ ∴ ∁ ∵ ∃ ∣ ∈ ∉ ∋ ⊂ ⊃ ∧ ∨ ↦ → ← ↔ ¬ ℂ ℍ ℕ ℙ ℚ ℝ

## 运算符 Operators

### 大型运算符

| $\sum$ `\sum`     | $\prod$ `\prod`         | $\bigotimes$ `\bigotimes` | $\bigvee$ `\bigvee`     |
| ----------------- | ----------------------- | ------------------------- | ----------------------- |
| $\int$ `\int`     | $\coprod$ `\coprod`     | $\bigoplus$ `\bigoplus`   | $\bigwedge$ `\bigwedge` |
| $\iint$ `\iint`   | $\intop$ `\intop`       | $\bigodot$ `\bigodot`     | $\bigcap$ `\bigcap`     |
| $\iiint$ `\iiint` | $\smallint$ `\smallint` | $\biguplus$ `\biguplus`   | $\bigcup$ `\bigcup`     |
| $\oint$ `\oint`   | $\oiint$ `\oiint`       | $\oiiint$ `\oiiint`       | $\bigsqcup$ `\bigsqcup` |

可直接输入：∫∬∭∮∏∐∑⋀⋁⋂⋃⨀⨁⨂⨄⨆

### 二元运算符

| $+$ `+`                 | $\cdot$ `\cdot`                     | $\gtrdot$ `\gtrdot`                 | $x \pmod a$ `x \pmod a`               |
| ----------------------- | ----------------------------------- | ----------------------------------- | ------------------------------------- |
| $-$ `-`                 | $\cdotp$ `\cdotp`                   | $\intercal$ `\intercal`             | $x \pod a$ `x \pod a`                 |
| $/$ `/`                 | $\centerdot$ `\centerdot`           | $\land$ `\land`                     | $\rhd$ `\rhd`                         |
| $*$ `*`                 | $\circ$ `\circ`                     | $\leftthreetimes$ `\leftthreetimes` | $\rightthreetimes$ `\rightthreetimes` |
| $\amalg$ `\amalg`       | $\circledast$ `\circledast`         | $\ldotp$ `\ldotp`                   | $\rtimes$ `\rtimes`                   |
| $\And$ `\And`           | $\circledcirc$ `\circledcirc`       | $\lor$ `\lor`                       | $\setminus$ `\setminus`               |
| $\ast$ `\ast`           | $\circleddash$ `\circleddash`       | $\lessdot$ `\lessdot`               | $\smallsetminus$ `\smallsetminus`     |
| $\barwedge$ `\barwedge` | $\Cup$ `\Cup`                       | $\lhd$ `\lhd`                       | $\sqcap$ `\sqcap`                     |
| $\bigcirc$ `\bigcirc`   | $\cup$ `\cup`                       | $\ltimes$ `\ltimes`                 | $\sqcup$ `\sqcup`                     |
| $\bmod$ `\bmod`         | $\curlyvee$ `\curlyvee`             | $x \mod a$ `x\mod a`                | $\times$ `\times`                     |
| $\boxdot$ `\boxdot`     | $\curlywedge$ `\curlywedge`         | $\mp$ `\mp`                         | $\unlhd$ `\unlhd`                     |
| $\boxminus$ `\boxminus` | $\div$ `\div`                       | $\odot$ `\odot`                     | $\unrhd$ `\unrhd`                     |
| $\boxplus$ `\boxplus`   | $\divideontimes$ `\divideontimes`   | $\ominus$ `\ominus`                 | $\uplus$ `\uplus`                     |
| $\boxtimes$ `\boxtimes` | $\dotplus$ `\dotplus`               | $\oplus$ `\oplus`                   | $\vee$ `\vee`                         |
| $\bullet$ `\bullet`     | $\doublebarwedge$ `\doublebarwedge` | $\otimes$ `\otimes`                 | $\veebar$ `\veebar`                   |
| $\Cap$ `\Cap`           | $\doublecap$ `\doublecap`           | $\oslash$ `\oslash`                 | $\wedge$ `\wedge`                     |
| $\cap$ `\cap`           | $\doublecup$ `\doublecup`           | $\pm$ `\pm` or `\plusmn`            | $\wr$ `\wr`                           |

可直接输入：+−/∗⋅±×÷∓∔∧∨∩∪≀⊎⊓⊔⊕⊖⊗⊘⊙⊚⊛⊝

### 分数和二项式

| $\frac{a}{b}$`\frac{a}{b}` | $\tfrac{a}{b}$`\tfrac{a}{b}` | $\genfrac ( ] {2pt}{1}a{a+1}$`\genfrac ( ] {2pt}{1}a{a+1}` |
| -------------------------- | ---------------------------- | ---------------------------------------------------------- |
| ${a \over b}$`{a \over b}` | $\dfrac{a}{b}$`\dfrac{a}{b}` | ${a \above{2pt} b+1}$`{a \above{2pt} b+1}`                 |
| $a/b$`a/b`                 |                              | $\cfrac{a}{1 + \cfrac{1}{b}}$`\cfrac{a}{1 + \cfrac{1}{b}}` |

| $\binom{n}{k}$`\binom{n}{k}`   | $\dbinom{n}{k}$`\dbinom{n}{k}` | ${n\brace k}$`{n\brace k}` |
| ------------------------------ | ------------------------------ | -------------------------- |
| ${n \choose k}$`{n \choose k}` | $\tbinom{n}{k}$`\tbinom{n}{k}` | ${n\brack k}$`{n\brack k}` |

### 数学运算符

| $\arcsin$ `\arcsin` | $\cotg$ `\cotg`                       | $\ln$ `\ln`                             | $\det$ `\det`       |
| ------------------- | ------------------------------------- | --------------------------------------- | ------------------- |
| $\arccos$ `\arccos` | $\coth$ `\coth`                       | $\log$ `\log`                           | $\gcd$ `\gcd`       |
| $\arctan$ `\arctan` | $\csc$ `\csc`                         | $\sec$ `\sec`                           | $\inf$ `\inf`       |
| $\arctg$ `\arctg`   | $\ctg$ `\ctg`                         | $\sin$ `\sin`                           | $\lim$ `\lim`       |
| $\arcctg$ `\arcctg` | $\cth$ `\cth`                         | $\sinh$ `\sinh`                         | $\liminf$ `\liminf` |
| $\arg$ `\arg`       | $\deg$ `\deg`                         | $\sh$ `\sh`                             | $\limsup$ `\limsup` |
| $\ch$ `\ch`         | $\dim$ `\dim`                         | $\tan$ `\tan`                           | $\max$ `\max`       |
| $\cos$ `\cos`       | $\exp$ `\exp`                         | $\tanh$ `\tanh`                         | $\min$ `\min`       |
| $\cosec$ `\cosec`   | \homhom `\hom`                        | $\tg$ `\tg`                             | $\Pr$ `\Pr`         |
| $\cosh$ `\cosh`     | \kerker `\ker`                        | $\th$ `\th`                             | $\sup$ `\sup`       |
| $\cot$ `\cot`       | \lglg `\lg`                           | $\argmax$ `\argmax`                     | $\argmin$ `\argmin` |
| $\plim$ `\plim`     | $\operatorname{f}$ `\operatorname{f}` | $\operatorname*{f}$ `\operatorname*{f}` |                     |

上表右边一列的函数可以使用 `\limits`。

### 开方

$\sqrt{x}$`\sqrt{x}`

$\sqrt[3]{x}$`\sqrt[3]{x}`



## 特殊符号 Special Notation

### 括号型符号

| $\bra{\phi}$`\bra{\phi}` | $\ket{\psi}$`\ket{\psi}` | $\braket{\phi\vert\psi}$`\braket{\phi\vert\psi}` |
| ------------------------ | ------------------------ | ------------------------------------------------ |
| $\Bra{\phi}$`\Bra{\phi}` | $\Ket{\psi}$`\Ket{\psi}` |                                                  |

## 样式，颜色，大小和字体

### 类型指定

`\mathbin` `\mathclose` `\mathinner` `\mathop`

`\mathopen` `\mathord` `\mathpunct` `\mathrel`

### 颜色

$\color{blue} F=ma$`\color{blue} F=ma`

请注意，KaTeX`\color`的作用就像一个开关。这与LaTeX一致而不同于MathJax。其他的KaTeX颜色函数需采用如下的参数形式：

| $\textcolor{blue}{F=ma}$          | `\textcolor{blue}{F=ma}`        |
| --------------------------------- | ------------------------------- |
| $\textcolor{#228B22}{F=ma}$       | `\textcolor{#228B22}{F=ma}`     |
| $$\colorbox{aqua}{$F=ma$}$$       | `\colorbox{aqua}{$F=ma$}`       |
| $$\fcolorbox{red}{aqua}{$F=ma$}$$ | `\fcolorbox{red}{aqua}{$F=ma$}` |

请注意，在LaTeX中，`\colorbox`和`\fcolorbox`是将第三个参数作为文本来渲染的，在必要时需如上述例子中一样使用`$`将其切换回数学模式。

对于颜色定义，KaTeX颜色函数接受标准的HTML预定义颜色名以及十六进制RGB颜色代码（是否在其前添加“#”则是可选的）。

### 字体

| $\mathrm{Ab0}$ `\mathrm{Ab0}`         | $\mathbf{Ab0}$ `\mathbf{Ab0}`        | $\mathit{Ab0}$ `\mathit{Ab0}`     |
| ------------------------------------- | ------------------------------------ | --------------------------------- |
| $\mathnormal{Ab0}$ `\mathnormal{Ab0}` | $\textbf{Ab0}$ `\textbf{Ab0}`        | $\textit{Ab0}$ `\textit{Ab0}`     |
| $\textrm{Ab0}$ `\textrm{Ab0}`         | $\bf Ab0$ `\bf Ab0`                  | $\it Ab0$ `\it Ab0`               |
| $\rm Ab0$ `\rm Ab0`                   | $\bold{Ab0}$ `\bold{Ab0}`            | $\textup{Ab0}$ `\textup{Ab0}`     |
| $\textnormal{Ab0}$ `\textnormal{Ab0}` | $\boldsymbol{Ab0}$ `\boldsymbol{Ab}` | $\Bbb{AB}$ `\Bbb{AB}`             |
| $\text{Ab0}$ `\text{Ab0}`             | $\bm{Ab0}$ `\bm{Ab0}`                | $\mathbb{AB}$ `\mathbb{AB}`       |
| $\mathsf{Ab0}$ `\mathsf{Ab0}`         | $\textmd{Ab0}$ `\textmd{Ab0}`        | $\frak{Ab0}$ `\frak{Ab0}`         |
| $\textsf{Ab0}$ `\textsf{Ab0}`         | $\mathtt{Ab0}$ `\mathtt{Ab0}`        | $\mathfrak{Ab0}$ `\mathfrak{Ab0}` |
| $\sf Ab0$ `\sf Ab0`                   | $\texttt{Ab0}$ `\texttt{Ab0}`        | $\mathcal{AB0}$ `\mathcal{AB0}`   |
|                                       | $\tt Ab0$ `\tt Ab0`                  | $\cal AB0$ `\cal AB0`             |
|                                       |                                      | $\mathscr{AB}$ `\mathscr{AB}`     |

使用`\textXX`字体命令可以叠加字族、字重和字形属性，例如`\textsf{\textbf{H}}`将输出$\textsf{\textbf{H}}$。其他版本则不能，如`\mathsf{\mathbf{H}}`只能输出$\mathsf{\mathbf{H}}$。

在KaTeX字体没有粗体字的情况下，`\pmb`可以模拟一个粗体字。例如，`\pmb{\mu}` 将渲染为：$\pmb{\mu}$

### 尺寸

| $\Huge AB$ `\Huge AB`   | $\normalsize AB$ `\normalsize AB`     |
| ----------------------- | ------------------------------------- |
| $\huge AB$ `\huge AB`   | $\small AB$ `\small AB`               |
| $\LARGE AB$ `\LARGE AB` | $\footnotesize AB$ `\footnotesize AB` |
| $\Large AB$ `\Large AB` | $\scriptsize AB$ `\scriptsize AB`     |
| $\large AB$ `\large AB` | $\tiny AB$ `\tiny AB`                 |

### 样式

| $\displaystyle\sum_{i=1}^n$ `\displaystyle\sum_{i=1}^n`      |
| ------------------------------------------------------------ |
| $\textstyle\sum_{i=1}^n$ `\textstyle\sum_{i=1}^n`            |
| $\scriptstyle x$ `\scriptstyle x` （首个上/下标的尺寸）      |
| $\scriptscriptstyle x$`\scriptscriptstyle x`（后续上/下标的尺寸） |
| $\lim\limits_x$`\lim\limits_x`                               |
| $\lim\nolimits_x$`\lim\nolimits_x`                           |
| $\verb!x^2!$`\verb!x^2!`                                     |

`\text{...}`将接受嵌套的`$...$`片段并将其渲染为数学模式。

### 符号和标点

| `% comment`                                             | $\dots$ `\dots`                                              | $\KaTeX$ `\KaTeX`                             |
| ------------------------------------------------------- | ------------------------------------------------------------ | --------------------------------------------- |
| $\%$ `\%`                                               | $\cdots$ `\cdots`                                            | $\LaTeX$ `\LaTeX`                             |
| $\#$ `\#`                                               | $\ddots$ `\ddots`                                            | $\TeX$ `\TeX`                                 |
| $\&$ `\&`                                               | $\ldots$ `\ldots`                                            | $\nabla$ `\nabla`                             |
| $\_$ `\_`                                               | $\vdots$ `\vdots`                                            | $\infty$ `\infty`                             |
| $\text{\textunderscore}$ `\text{\textunderscore}`       | $\dotsb$ `\dotsb`                                            | $\infin$ `\infin`                             |
| $\text{--}$ `\text{--}`                                 | $\dotsc$ `\dotsc`                                            | $\checkmark$ `\checkmark`                     |
| $\text{\textendash}$ `\text{\textendash}`               | $\dotsi$ `\dotsi`                                            | $\dag$ `\dag`                                 |
| $\text{---}$ `\text{---}`                               | $\dotsm$ `\dotsm`                                            | $\dagger$ `\dagger`                           |
| $\text{\textemdash}$ `\text{\textemdash}`               | $\dotso$ `\dotso`                                            | $\text{\textdagger}$ `\text{\textdagger}`     |
| $\text{\textasciitilde}$ `\text{\textasciitilde}`       | $\sdot$ `\sdot`                                              | $\ddag$ `\ddag`                               |
| $\text{\textasciicircum}$ `\text{\textasciicircum}`     | $\mathellipsis$ `\mathellipsis`                              | $\ddagger$ `\ddagger`                         |
|                                                         | $`$ `` ` ``                                             | $\text{\textellipsis}$ `\text{\textellipsis}` | $\text{\textdaggerdbl}$ `\text{\textdaggerdbl}` |                                               |
| $\text{\textquoteleft}$ `text{\textquoteleft}`          | $\Box$ `\Box`                                                | $\Dagger$ `\Dagger`                           |
| $\lq$ `\lq`                                             | $\square$ `\square`                                          | $\angle$ `\angle`                             |
| $\text{\textquoteright}$ `\text{\textquoteright}`       | $\blacksquare$ `\blacksquare`                                | $\measuredangle$ `\measuredangle`             |
| $\rq$ `\rq`                                             | $\triangle$ `\triangle`                                      | $\sphericalangle$ `\sphericalangle`           |
| $\text{\textquotedblleft}$ `\text{\textquotedblleft}`   | $\triangledown$ `\triangledown`                              | $\top$ `\top`                                 |
| $"$ `"`                                                 | $\triangleleft$ `\triangleleft`                              | $\bot$ `\bot`                                 |
| $\text{\textquotedblright}$ `\text{\textquotedblright}` | $\triangleright$ `\triangleright`                            | $$ \$ $$ `\$`                                 |
| $\colon$ `\colon`                                       | $\bigtriangledown$ `\bigtriangledown`                        | $\text{\textdollar}$ `\text{\textdollar}`     |
| $\backprime$ `\backprime`                               | $\bigtriangleup$ `\bigtriangleup`                            | $\pounds$ `\pounds`                           |
| $\prime$ `\prime`                                       | $\blacktriangle$ `\blacktriangle`                            | $\mathsterling$ `\mathsterling`               |
| $\text{\textless}$ `\text{\textless}`                   | $\blacktriangledown$ `\blacktriangledown`                    | $\text{\textsterling}$ `\text{\textsterling}` |
| $\text{\textgreater}$ `\text{\textgreater}`             | $\blacktriangleleft$ `\blacktriangleleft`                    | $\yen$ `\yen`                                 |
| $\text{\textbar}$ `\text{\textbar}`                     | $\blacktriangleright$ `\blacktriangleright`                  | $\surd$ `\surd`                               |
| $\text{\textbardbl}$ `\text{\textbardbl}`               | $\diamond$ `\diamond`                                        | $\degree$ `\degree`                           |
| $\text{\textbraceleft}$ `\text{\textbraceleft}`         | $\Diamond$ `\Diamond`                                        | $\text{\textdegree}$ `\text{\textdegree}`     |
| $\text{\textbraceright}$ `\text{\textbraceright}`       | $\lozenge$ `\lozenge`                                        | $\mho$ `\mho`                                 |
| $\text{\textbackslash}$ `\text{\textbackslash}`         | $\blacklozenge$ `\blacklozenge`                              | $\diagdown$ `\diagdown`                       |
| $\text{\P}$ `\text{\P}`                                 | $\star$ `\star`                                              | $\diagup$ `\diagup`                           |
| $\text{\S}$ `\text{\S}`                                 | $\bigstar$ `\bigstar`                                        | $\flat$ `\flat`                               |
| $\text{\sect}$ `\text{\sect}`                           | $\clubsuit$ `\clubsuit`                                      | $\natural$ `\natural`                         |
| $\copyright$ `\copyright`                               | $\clubs$ `\clubs`                                            | $\sharp$ `\sharp`                             |
| $\circledR$ `\circledR`                                 | $\diamondsuit$ `\diamondsuit`                                | $\heartsuit$ `\heartsuit`                     |
| $\text{\textregistered}$ `\text{\textregistered}`       | $\diamonds$ `\diamonds`                                      | $\hearts$ `\hearts`                           |
| $\circledS$ `\circledS`                                 | $\spadesuit$ `\spadesuit`                                    | $\spades$ `\spades`                           |
| $\text{\textcircled a}$ `\text{\textcircled a}`         | $\maltese$ `\maltese`                                        | $\minuso$ `\minuso`                           |

可直接输入：£¥∇∞⋅∠∡∢♠♡♢♣♭♮♯✓…⋮⋯⋱! ‼ ⦵

### 单位

在KaTeX中，单位与TeX中一样是按比例排列的，但不同于CSS单位。

| **KaTeX 单位** | **值**               | **KaTeX 单位** | **值**              |
| -------------- | -------------------- | -------------- | ------------------- |
| em             | CSS em               | bp             | 1/72 inch × F × G   |
| ex             | CSS ex               | pc             | 12 KaTeX pt         |
| mu             | 1/18 CSS em          | dd             | 1238/1157 KaTeX pt  |
| pt             | 1/72.27 inch × F × G | cc             | 14856/1157 KaTeX pt |
| mm             | 1 mm × F × G         | nd             | 685/642 KaTeX pt    |
| cm             | 1 cm × F × G         | nc             | 1370/107 KaTeX pt   |
| in             | 1 inch × F × G       | sp             | 1/65536 KaTeX pt    |

上表中：

F =（周围HTML文本的字体大小）/（10pt）

默认情况下，G=1.21，因为KaTeX字体大小通常是1.21×周围字体大小。它可以被HTML页面的CSS覆盖。

效果如下：

| **单位** | **textstyle**       | **scriptscript**                      | **huge**                 |
| -------- | ------------------- | ------------------------------------- | ------------------------ |
| em or ex | $\rule{1em}{1em}$   | $\scriptscriptstyle\rule{1em}{1em}$   | $\huge\rule{1em}{1em}$   |
| mu       | $\rule{18mu}{18mu}$ | $\scriptscriptstyle\rule{18mu}{18mu}$ | $\huge\rule{18mu}{18mu}$ |
| others   | $\rule{10pt}{10pt}$ | $\scriptscriptstyle\rule{10pt}{10pt}$ | $\huge\rule{10pt}{10pt}$ |
