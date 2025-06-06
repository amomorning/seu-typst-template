# 东南大学论文模板

使用 Typst 复刻东南大学「本科毕业设计（论文）报告」模板和「研究生学位论文」模板。

请在 [`init-files`](./init-files/) 目录内查看 Demo PDF。

> [!IMPORTANT]
>
> 此模板是民间模板，有不被学校认可的风险。
>
> 本模板虽已尽力尝试复原原始 Word 模板，但可能仍然存在诸多格式问题。
>
> Typst 是一个仍在活跃开发、可能会有较大变更的排版工具，请选择最新版模板与本模板建议的 Typst 版本相配合使用。

- [东南大学论文模板](#东南大学论文模板)
  - [使用方法](#使用方法)
    - [本地使用](#本地使用)
    - [Web App](#web-app)
  - [模板内容](#模板内容)
    - [研究生学位论文模板](#研究生学位论文模板)
    - [本科毕业设计（论文）报告模板](#本科毕业设计论文报告模板)
    - [本科毕业设计（论文）资料翻译模板](#本科毕业设计论文资料翻译模板)
    - [本科毕业设计（论文）中期检查表](#本科毕业设计论文中期检查表)
  - [目前存在的问题](#目前存在的问题)
    - [参考文献](#参考文献)
  - [友情链接](#友情链接)
  - [开发与协议](#开发与协议)
    - [二次开发](#二次开发)

## 使用方法

本模板需要使用 Typst 0.13.x 编译。

此模板已上传 Typst Universe ，可以使用 `typst init` 功能初始化，也可以使用 Web App 编辑。Typst Universe 上的模板可能不是最新版本。如果需要使用最新版本的模板，从本 repo 中获取。

### 本地使用

请先安装位于 `fonts` 目录内的全部字体。然后，您可以使用以下两种方式使用本模板：

- 下载/clone 本 repo 的全部文件，编辑 `init-files` 目录内的示例文件。
- 使用 `typst init @preview/cheda-seu-thesis:0.3.4` 来获取此模板与初始化文件。

随后，您可以通过编辑示例文件来生成想要的论文。两种论文格式的说明都在对应的示例文档内。

如您使用 VSCode 作为编辑器，可以尝试使用 [Tinymist](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) 与 [Typst Preview](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) 插件。如有本地包云同步需求，可以使用 [Typst Sync](https://marketplace.visualstudio.com/items?itemName=OrangeX4.vscode-typst-sync) 插件。更多编辑技巧，可查阅 <https://github.com/nju-lug/modern-nju-thesis#vs-code-%E6%9C%AC%E5%9C%B0%E7%BC%96%E8%BE%91%E6%8E%A8%E8%8D%90> 。

``` bash
# 本地 utpm 连接
git clone git@github.com:amomorning/seu-typst-template.git
utpm ws link --force

# 导入到论文中使用：
#import "@local/cheda-seu-thesis:0.3.4": degree-conf, degree-utils
```

### Web App

> [!NOTE]
>
> 由于字体原因，不建议使用 Web App 编辑此模板。

请打开 <https://typst.app/universe/package/cheda-seu-thesis> 并点击 `Create project in app` ，或在 Web App 中选择 `Start from a template`，再选择 `cheda-seu-thesis`。

然后，请将 <https://github.com/csimide/SEU-Typst-Template/tree/master/fonts> 内的 **所有** 字体上传到 Typst Web App 内该项目的根目录。注意，之后每次打开此项目，浏览器都会花费很长时间从 Typst Web App 的服务器下载这一批字体，体验较差。

最后，请按照自动打开的文件的提示操作。

## 模板内容

### 研究生学位论文模板

此 Typst 模板按照[《东南大学研究生学位论文格式规定》](https://seugs.seu.edu.cn/2023/0424/c26669a442680/page.htm)制作，制作时参考了 [SEUThesis 模板](https://ctan.math.utah.edu/ctan/tex-archive/macros/latex/contrib/seuthesis/seuthesis.pdf)。

当前支持进度：

- 文档构件
  - [x] 封面
  - [x] 中英文扉页
  - [x] 中英文摘要
  - [x] 目录
  - [x] 术语表
  - [x] 正文
  - [x] 致谢
  - [x] 参考文献
  - [x] 附录
  - [ ] 索引
  - [ ] 作者简介
  - [ ] 后记
  - [ ] 封底
- 功能
  - [ ] 盲审
  - [x] 页码编号：正文前使用罗马数字，正文及正文后使用阿拉伯数字
  - [x] 正文、附录图表编号格式：详见研院要求
  - [x] 数学公式放置位置：离页面左侧两个汉字距离
  - [x] 数学公式编号：公式块右下
  - [x] 插入空白页：新章节总在奇数页上
  - [x] 页眉：奇数页显示章节号和章节标题，偶数页显示固定内容
  - [x] 参考文献：支持双语显示

### 本科毕业设计（论文）报告模板

此 Typst 模板基于东南大学本科毕业设计（论文）报告模板（2025 年 3 月）仿制，原模板可以在教务处网站上下载（[2019 年 9 月版](https://jwc.seu.edu.cn/2021/1108/c21686a389963/page.htm) , [2024 年 1 月版](https://jwc.seu.edu.cn/2024/0117/c21686a479303/page.htm) , [2025 年 3 月版](https://jwc.seu.edu.cn/2025/0320/c21686a522328/page.htm)）。

当前支持进度：

- 文档构件
  - [x] 封面
  - [x] 中英文摘要
  - [x] 目录
  - [x] 正文
  - [x] 参考文献
  - [x] 附录
  - [x] 致谢
  - [x] 封底
- 功能
  - [ ] 盲审
  - [x] 页码编号：正文前使用罗马数字，正文及正文后使用阿拉伯数字
  - [x] 正文、附录图表编号格式：详见本科毕设要求
  - [x] 数学公式放置位置：离页面左侧两个汉字距离
  - [x] 数学公式编号：公式块右侧中心
  - [x] 页眉：显示固定内容
  - [x] 参考文献：支持双语显示
  - [ ] ~~表格显示“续表”~~ 由于教务处提供的模板中没有给出“续表”显示样例，故暂不实现。

> [!NOTE]
>
> 可以看看隔壁 <https://github.com/TideDra/seu-thesis-typst/> 项目，也正在使用 Typst 实现毕业设计（论文）报告模板，还提供了毕设翻译模板。该项目的实现细节与本模板并不相同，您可以根据自己的喜好选择。

### 本科毕业设计（论文）资料翻译模板

此 Typst 模板的封面部分基于本科毕业设计（论文）资料翻译模板（2019 年 4 月）仿制，正文复用本科毕业设计（论文）报告模板，原封面可以在教务处网站上下载（[模板列表](https://jwc.seu.edu.cn/2019/0428/c21696a271007/page.htm)、[封面文件](https://jwc.seu.edu.cn/_upload/article/files/d3/d2/53aa66fe4e09ac440cfcda1a59f5/3030d352-a89d-469c-be1e-e7a6c470bc01.doc)）。

### 本科毕业设计（论文）中期检查表

此 Typst 模板基于本科毕业设计（论文）中期检查表（2019 年 4 月）仿制，原模板可以在[教务处网站](https://jwc.seu.edu.cn/2019/0428/c21696a271007/page.htm)上下载。

> [!NOTE]
>
> 不是所有院系都要求填写此中期检查表。部分学院只要求提交在线表格，不需要提交此附件。

## 目前存在的问题

- 参考文献格式不完全符合要求。请见下方参考文献小节。
- 行距、边距等有待继续调整。

### 参考文献

<details>
<summary>参考文献格式不完全符合要求。</summary>

Typst 自带的 GB/T 7714-2015 numeric 格式与学校要求格式相比，有以下问题：

1. 学校要求在作者数量较多时，英文使用 `et al.` 中文使用 `等` 来省略。但是，Typst 目前仅可以显示为单一语言。

   **A:** 该问题系 Typst 的 CSL 解析器不支持 CSL-M 导致的。

   <details>
   <summary> 详细原因 </summary>

   - 使用 CSL 实现这一 feature 需要用到 [CSL-M](https://citeproc-js.readthedocs.io/en/latest/csl-m/index.html#cs-layout-extension) 扩展的多 `layout` 功能，而 Typst 尚不支持 CSL-M 扩展功能。详见 https://github.com/typst/typst/issues/2793 与 https://github.com/typst/citationberg/issues/5 。
   - Typst 目前会忽视 BibTeX/CSL 中的 `language` 字段。参见 https://github.com/typst/hayagriva/pull/126 。

   因为上述原因，目前很难使用 Typst 原生方法实现根据语言自动选用 `et al.` 与 `等`。

   </details>

   OrangeX4 和我写了一个基于查找替换的 `bilingual-bibliography` 功能，试图在 Typst 支持 CSL-M 前实现中文西文使用不同的关键词。

   本模板的 Demo 文档内已使用 `bilingual-bibliography` 引用，请查看 Demo 文档以了解用法。注意，该功能仍在测试，很可能有 Bug，详见 https://github.com/csimide/SEU-Typst-Template/issues/1 。

   > 请在 https://github.com/nju-lug/modern-nju-thesis/issues/3 查看更多有关双语参考文献实现的讨论。
   >
   > 本模板曾经尝试使用 https://github.com/csimide/cslper 作为双语参考文献的实现方法。

2. 学校给出的范例中，除了纯电子资源，即使引用文献来自线上渠道，也均不加 `OL`、访问日期、DOI 与 链接。但是，Typst 内置的 GB/T 7714-2015 numeric 格式会为所有 bib 内定义了链接/DOI 的文献添加 `OL` 标记和链接/DOI 。

   **A:** 该问题系学校的标准与 GB/T 7714-2015 不完全一致导致的。

   请使用 `style: "./seu-thesis/gb-t-7714-2015-numeric-seu.csl"` ，会自动依据文献类型选择是否显示 `OL` 标记和链接/DOI。

   > 该 csl 修改自 <https://github.com/redleafnew/Chinese-STD-GB-T-7714-related-csl/blob/main/003gb-t-7714-2015-numeric-bilingual-no-url-doi.csl>
   >
   > 原文件基于 CC-BY-SA 3.0 协议共享。

3. 作者大小写（或者其他细节）与学校范例不一致。
4. 学位论文中，学校要求引用其他学位论文的文献类型应当写作 `[D]: [博士学位论文].` 格式，但模板显示为 `[D]` ，不显示子类别。
5. 学位论文中，学校给出的范例使用全角符号，如全角方括号、全角句点等。
6. ~~引用条目丢失 `. ` ，如 `[M]2nd ed`。~~

   **3~6 A:** 学校用的是 GB/T 7714-2015 的方言，曾经有学长把它叫做 GB/T 7714-SEU ，目前没找到完美匹配学校要求的 CSL（不同学院的要求也不太一样），后续会写一个符合要求的 CSL 文件。

   **2024-05-02 更新:** 现已初步实现 CSL。不得不说 Typst 的 CSL 支持成谜……目前修复情况如下：

   - 问题 3 已修复；
   - 问题 4 在学位论文的 CSL 内已修复，但 Typst 似乎不支持这一字段，因此无法显示；
   - 问题 5 不准备修复，查阅数篇已发表的学位论文，使用的也是半角符号；
   - 问题 6 ~~似乎是 Typst 的 CSL 支持的问题，本模板附带的 CSL 文件已经做了额外处理，应该不会丢 `. ` 了。~~ Typst 0.13.0 已修复此问题，见 https://github.com/typst/hayagriva/issues/180 。

7. 引用其他学位论文时，GB7714-2015/本科毕设/学位论文均要求注明 `地点: 学校名称, 年份.` 。但是模板不显示这一项。

   **A:** Typst 不支持 `school` `institution` 作为 `publisher` 的别名，亦不支持解析 csl 中的 `institution` （ https://github.com/typst/hayagriva/issues/112 ）。如需修复，请手动修改 bib 文件内对应条目，在 `school = {学校名称},` 下加一行 `publisher = {学校名称},` 。
   <details>
    <summary> 修改示例 </summary>

   ```biblatex
   @phdthesis{Example1,
     type = {{硕士学位论文}},
     title = {{摸鱼背景下的Typst模板使用研究}},
     author = {王, 东南},
     year = {2024},
     langid = {chinese},
     address = {南京},
     school = {东南大学},
     publisher = {东南大学},
   }
   ```

   </details>

8. 正文中连续引用，上标合并错误（例如，引用 1 2 3 4 应当显示为 [1-4] ，但是显示为 [1,4] ）。

   **A:** ~~临时方案是把 csl 文件里 `after-collapse-delimiter=","` 改成 `after-collapse-delimiter="-"`。本模板附带的 CSL 文件已做此修改。~~

   ~~详细原因请见 https://github.com/typst/hayagriva/issues/154 。~~

   ~~https://github.com/typst/hayagriva/pull/176 正尝试解决这一 bug。**该 bug 修复后，请及时撤销上述对 csl 的临时修改。**~~

   Typst 0.12.0 已经修复，不需要魔改了。

</details>

## 友情链接

- Typst Touying 东南大学主题幻灯片模板 by QuadnucYard - https://github.com/QuadnucYard/touying-theme-seu
- 东南大学 Typst 本科毕设模板与毕设翻译模板 by Geary.Z (TideDra) - https://github.com/TideDra/seu-thesis-typst

## 开发与协议

如果您在使用过程中遇到任何问题，请提交 issue。本项目欢迎您的 PR。如果有其他模板需求也可以在 issue 中提出。

除下述特殊说明的文件外，此项目使用 MIT License 。

- `init-files/demo_image/` 路径下的文件来自东南大学教务处本科毕设模板。
- `seu-thesis/assets/` 路径下的文件是由东南大学教务处模板经二次加工得到，或从东南大学视觉设计中取得。
- `fonts` 路径下的文件是此模板用到的字体。
- `东南大学本科毕业设计（论文）参考模板 (2024年1月修订).docx` 是教务处提供的毕设论文模板。

### 二次开发

本模板欢迎二次开发。在二次开发前，建议了解本模板的主要特性与关联的文件：

- 有较为麻烦的图表、公式编号（图表编号格式不相同，甚至附录与正文中图表编号格式也不相同；图的名称在图下方，表的名称在表上方；公式不是居中对齐，公式编号位置不是右侧上下居中）。

  - 已经改用 `i-figured` 包完成。

- （仅研究生学位论文）奇数页偶数页页眉不同，且有页眉中显示章节名称的需求。

  - 该功能位于 `seu-thesis/parts/get-heading-title.typ`。
  - 基于小蓝书 https://typst-doc-cn.github.io/tutorial/intermediate/content-stateful-3.html 实现。

- 支持双语显示参考文献（自动使用 `et al.` 和 `等`）
  - 该功能来自 `bilingual-bibliography`，关联的文件是 `seu-thesis/utils/bilingual-bibliography.typ`。
  - 有关 `bilingual-bibliography` 的更多信息，请查看 https://github.com/nju-lug/modern-nju-thesis/issues/3

> [!NOTE]
>
> 本模板内造的轮子比较多，而且我的代码质量一般，请酌情取用。
