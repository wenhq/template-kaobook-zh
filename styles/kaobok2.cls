\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{styles/kaobok2}[2024/11/29 v0.1.0 kaobok2]

% 设定文档类选项
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{kaobook}}
\ProcessOptions\relax

% 调用ctexart文档类
\LoadClass[]{styles/kaobook}
\RequirePackage{styles/kaorefs}
\usetikzlibrary{calc,arrows,fadings,decorations,decorations.pathreplacing,decorations.markings,decorations.pathmorphing,decorations.text,patterns,shapes,shapes.misc,shapes.geometric,circuits,circuits.ee,circuits.ee.IEC,circuits.logic,shapes.gates.logic.IEC,scopes,intersections,matrix,positioning}


\RequirePackage[UTF8, fontset=none]{ctex}

\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage{unicode-math}
\setmainfont{TeX Gyre Schola}
\setsansfont{TeX Gyre Heros}
\setmonofont{TeX Gyre Cursor}
\setmathfont{TeX Gyre Schola Math}
\setCJKmainfont{Source Han Serif SC}
\setCJKsansfont{Source Han Sans SC}
\setCJKmonofont{Source Han Mono SC}

% 段落格式
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}

%
% 两行代码的作用是自定义无序列表中不同层级列表项的标记符号，将第一级列表项的标记改为极小的黑色直角三角形，第二级列表项的标记改为实心圆点。
\renewcommand{\labelitemi}{\tiny$\blacktriangleright$}
\renewcommand{\labelitemii}{\textbullet}

\definecolor{monOrange}{rgb}{1,0.6,0}
\definecolor{monBleu}{rgb}{0.2,0.4,0.6}

%----------------------------------------------------------------------------------------
%	COLOURS
%----------------------------------------------------------------------------------------

% Uncomment to have coloured headings
\addtokomafont{title}{\color{monBleu}}
\addtokomafont{part}{\color{monBleu}}
\addtokomafont{chapter}{\color{monBleu}}
\addtokomafont{section}{\color{monBleu}}
%\addtokomafont{subsection}{\color{Maroon}}
%\addtokomafont{subsubsection}{\color{Maroon}}
%\addtokomafont{paragraph}{\color{Maroon}}
%\addtokomafont{captionlabel}{\color{Blue}}
%\addtokomafont{pagenumber}{\color{Maroon}}

% Choose the default colors
\hypersetup{
	%allcolors=DarkGreen,
	%anchorcolor=Red,
	%citecolor=DarkOrange!70!black,
	citecolor=Black,
	filecolor=OliveGreen,
	%linkcolor=Blue,
	linkcolor=monBleu,
	%pagecolor = Blue,
	%menucolor=Red,
	%runcolor=Red,
	urlcolor=monBleu,
}

% •••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
% 								| STYLES TIKZ |
% •••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
% 还没仔细看这部分代码
\tikzset{>=stealth,inner sep=1pt, outer sep=2pt}			
\tikzset{
	vecteur/.style={->,thick,color=black,smooth},
	systeme/.style={ellipse,inner sep=5pt,outer sep=5pt,fill=gray,draw,dashed,text={white}},
	echange/.style={color=cyan,thick,->,text={black}},
	gaz/.style={fill=SkyBlue!10,inner sep=1pt},
	liq/.style={top color=lightgray!50,bottom color=gray,text={white}},
	force/.style={->,>=latex,monBleu,nodes={monBleu},ultra thick,rounded corners=4pt,smooth,line cap=round},	
	source/.style={rectangle,minimum height=10mm,fill=blue!25,inner sep=5pt,text=blue},
	transfert/.style={decoration={markings,mark=at position 5mm with {\arrow[]{>}}},postaction=decorate},
	bloc/.style={rounded corners=4pt,color=white,ball color=lightgray,smooth},
	verre/.style={draw=SkyBlue,fill=SkyBlue!30},
	bob/.style={decoration={coil,aspect=0.5,segment length=2mm,amplitude=2mm}},	
	rayon/.style={draw=red!66,thick,line join=round}
	}	