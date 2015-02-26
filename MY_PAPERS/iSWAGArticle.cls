\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iSWAGArticle}[2014/08/21 iSWAG article class]

\LoadClass[a4paper, twocolumn]{article}

\RequirePackage[hmarginratio=1:1,vmargin=22mm,hmargin=22mm, columnsep=20pt]{geometry} % Document margins
\RequirePackage{multicol} % Used for the two-column layout of the document
\RequirePackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} % Custom captions under/above floats in tables or figures
\RequirePackage{booktabs} % Horizontal rules in tables
\RequirePackage{float} % Required for tables and figures in the multi-column environment - they need to be placed in specific locations with the [H] (e.g. \begin{table}[H])
\RequirePackage{hyperref} % For hyperlinks in the PDF

\RequirePackage{lettrine} % The lettrine is the first enlarged letter at the beginning of the text
\RequirePackage{paralist} % Used for the compactitem environment which makes bullet points with less space between them

\RequirePackage{abstract} % Allows abstract customization
\renewcommand{\abstractnamefont}{\normalfont\bfseries} % Set the "Abstract" text to bold
\renewcommand{\abstracttextfont}{\normalfont\small\itshape} % Set the abstract itself to small italic text
\renewcommand{\absleftindent}{0ex}
\renewcommand{\absrightindent}{0ex}

\RequirePackage{titlesec} % Allows customization of titles
\renewcommand\thesection{\Roman{section}} % Roman numerals for the sections
\renewcommand\thesubsection{\Roman{subsection}} % Roman numerals for subsections
\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{} % Change the look of the section titles
\titleformat{\subsection}[block]{\large}{\thesubsection.}{1em}{} % Change the look of the section titles

\RequirePackage{fancyhdr} % Headers and footers
\pagestyle{fancy} % All pages have headers and footers
\fancyhead{} % Blank out the default header
\fancyfoot{} % Blank out the default footer
\fancyhead[C]{$1^{\mathrm{st}}$ International Symposium on Web AlGorithms $\bullet$ June 2015} % Custom header text

\date{}

\newif\if@iSWAGprevAuthor \@iSWAGprevAuthorfalse

\def\iSWAGAuthor#1{%
\if@iSWAGprevAuthor\cr\noalign{\vskip0.0ex}\fi%
\global\@iSWAGprevAuthortrue%
#1%
\crcr}

\def\@iSWAGauthorhalign{%
\lineskip=4pt%
\lineskiplimit=4pt%
\baselineskip=2pt%
\let\\\@iSWAGauthorhaligncr%
\tabskip=0pt%
\everycr{}%
\@iSWAGprevAuthorfalse%
\vtop\bgroup%
\halign\bgroup&\relax\hfil ##\relax
\hfil\cr}

% ensure last line, exit from halign, close vbox
\def\end@iSWAGauthorhalign{\crcr\egroup\egroup}

% handle bogus star form
\def\@iSWAGauthorhaligncr{{\ifnum0=`}\fi\@ifstar{\@@iSWAGauthorhaligncr}{\@@iSWAGauthorhaligncr}}

% test and setup the optional argument to \\[]
\def\@@iSWAGauthorhaligncr{\@testopt\@@@iSWAGauthorhaligncr\z@skip}

% end the line and do the optional spacer
\def\@@@iSWAGauthorhaligncr[#1]{\ifnum0=`{\fi}\cr\noalign{\vskip#1\relax}}

\def\and{\relax}

\renewcommand{\and}[1][\hfill]{\end{@iSWAGauthorhalign}#1\begin{@iSWAGauthorhalign}}

\def\maketitle{\par%
  \begingroup%
  \normalfont%
  \def\thefootnote{}%
  \def\footnotemark{}%
  \twocolumn[\newpage
  \bgroup\par\addvspace{.5\baselineskip}\centering%
  \vskip0.2em{\LARGE\@title\par}\vskip1.0em\par%
  \mbox{}\hfill\begin{@iSWAGauthorhalign}\@author\end{@iSWAGauthorhalign}\hfill\mbox{}\par
  \par\addvspace{.5\baselineskip}\egroup]
  \endgroup
}

\endinput
