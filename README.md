# template-kaobook-zh

## 背景

大概是2024年从 [LaTeX 工作室](https://www.latexstudio.net) 的公众号看到了有关《[经典 kaobook 定制版尽享精致美好科研生活](https://mp.weixin.qq.com/s/6YCZFB2w00ekm7VQZsEfLw)》的文章介绍，并尝试在实际工作中进行使用。

工作中发现 kaobook 在处理包含大量不同尺寸图片的文档，尤其是注释说明类操作手册方面表现出色，生成的文档布局整齐、视觉效果良好，且在排版时能够合理分配空间，提升文档的可读性与专业性。因此萌发编写一套 kaobook 中文模板的想法，方便查询和使用。

## 项目说明
本项目是一个使用 kaobook 的文档模板，为了方便中文文档的快速使用。项目以 kaobook 文档类为基础，通过扩展宏包的方式使用 kao 样式的文档排版，以实现更高效和专业的排版效果。

项目还作为学习 LaTeX 的文档，供日常查询使用。

### 代码目录结构

主要的目录有 styles、infos、chapters 等，说明如下：

- appendices/：存放附录章节。
- chapters/：存放文档的各个章节文件，每个章节的内容分别保存在独立的 .tex 文件中。
- font/：用于存放文档所需的字体文件，确保文档的排版符合要求。
- infos/：存放文档的信息文件，如封面 (titlepage.tex) 和目录 (toc.tex)。
- styles/：存放样式文件和类文件，这些文件用于定义文档的样式和格式。
    - kao.sty kaobook.cls kaorefs.sty 为 kaobook 文档类的核心内容，仅做最小化修改。kaobook 文档类见 [fmarotta/kaobook](https://github.com/fmarotta/kaobook/) 。
    - kao-zh.sty 作为本项目实现的汉化内容。
    - kao-ext.sty 方便文档写作的扩展引用。
- main.tex：文档的主文件，包含所有内容和结构的汇总。
- template-kaobook-zh.pdf：生成的最终 PDF 文件。

```
template-kaobook-zh
├─ appendices
│    └─ ap1.tex
│
├─ chapters
│    ├─ ch1.tex
│    └─ ch2.tex
│
├─ font
│    └─ xxx.ttf
│
├─ infos
│    ├─ acks.tex
│    ├─ copyright.tex
│    ├─ preface.tex
│    ├─ titlepage.tex
│    └─ toc.tex
│
├─ styles
│    ├─ kao-ext.sty
│    ├─ kao-zh.sty
│    ├─ kao.sty
│    ├─ kaobook.cls
│    └─ kaorefs.sty
│
├─ main.tex
└─ template-kaobook-zh.pdf
```

### 快速上手

按照项目目录结构，在导言区进行引用即可。

```latex
%! Tex program = xelatex
\documentclass[twoside]{styles/kaobook}
\usepackage{styles/kaorefs}
\usepackage{styles/kao-zh}
\usepackage{styles/kao-ext}
```

### 改动细节与实现效果

打开 [template-kaobook-zh.pdf](https://github.com/wenhq/template-kaobook-zh/blob/main/template-kaobook-zh.pdf) 了解详情。

## 注意事项

项目的作者仅为 LaTeX 的爱好者，因此在项目的开发过程中，难免存在一些考虑不周或使用不当的地方。这些问题可能源于作者对 LaTeX 以及 kaobook 特性和功能的理解尚未完全深入，或者由于实践经验的局限性，导致某些细节未能得到充分优化。

尽管该项目能够满足基本需求，但在复杂文档处理、性能优化或特殊排版要求方面，可能会存在不足之处。用户在使用过程中应注意可能遇到的一些局限性，并根据实际需求进行适当的调整和补充。

## 感谢

### 项目使用

- 核心引用：
    - [fmarotta/kaobook](https://github.com/fmarotta/kaobook/) 
- kaobook模板参考：
    - 物理课程模板书 [JimRou/template_kaobook](https://github.com/JimRou/template_kaobook)
    - 美美哒书籍 LaTeX 模板汉化版 [registor/kaobook-zh](https://github.com/registor/kaobook-zh)
- 免费字体：
    - 文源字体 [takushun-wu/WenYuanFonts](https://github.com/takushun-wu/WenYuanFonts)
    - Maple Mono 等宽字体 [subframe7536/maple-font](https://github.com/subframe7536/maple-font)
    - 更多商用免费字体 [jaywcjlove/free-font](https://github.com/jaywcjlove/free-font/)
- 编译环境：
    - 在线编译环境 [TeXPage](https://www.texpage.com/zh/) 在线协作，云端编译，即时预览

### 学习资料
- LaTeX 学习：
    - 《Latex简明速查手册》(8页) [xd15zhn/latexcookbook](https://github.com/xd15zhn/latexcookbook)
- 视频教程：
    - 西北农林科技大学《[LaTeX科技排版](https://coursehome.zhihuishu.com/courseHome/1000095492#teachTeam)》在线课程
- Beamer相关
    - [SDQ 演示模板(2025)](https://www.overleaf.com/latex/templates/sdq-presentation-template-2025/hhrwthdzdwfs)
    - IEE 官方开发的 LaTeX Beamer 演示文稿模板 [RobertGaugl/Template_LaTeX_IEE_Presentations](https://github.com/RobertGaugl/Template_LaTeX_IEE_Presentations)
    - 一键将 LaTeX 演示文稿变解说视频 [neylemkeunesp/latex2video-v2](https://github.com/neylemkeunesp/latex2video-v2)
- TikZ 绘图
    - [TikZ 100页手册](https://alg-d.com/math/tikz.pdf)，日文但中文阅读毫无障碍
    - 使用LaTeX绘制学术图表的示例 [xinychen/awesome-latex-drawing](https://github.com/xinychen/awesome-latex-drawing)
    - [TikZiT](https://tikzit.github.io/) 作图工具，使用帮助参考 [先利用tikzit保存多组自己作画的矢量图](https://www.zhihu.com/question/514898404/answer/2707657912)
- 其他宏包
    - 创建封面及护封 [BookCover 文档类](https://github.com/tibortomacs/bookcovertemplates)