\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2015/10/23 Standard homework format]
\LoadClass{article}
%----------------------------------------------------------------------------------------------------
%REQUIREMENTS
%----------------------------------------------------------------------------------------------------
\RequirePackage{xparse}
\RequirePackage{enumitem}
\RequirePackage{mdframed}
\RequirePackage[svgcolors]{xcolor}
%----------------------------------------------------------------------------------------------------
%GENERAL PAGE SETTINGS
%----------------------------------------------------------------------------------------------------
\RequirePackage[a4paper, total={7in, 10in}]{geometry}
\RequirePackage{tgpagella}
%\RequirePackage{heuristica}
%\RequirePackage[heuristica,vvarbb,bigdelims]{newtxmath}
\RequirePackage[T1]{fontenc}
\setlength\parindent{0pt}
%----------------------------------------------------------------------------------------------------
%SECTION FORMATTING
%----------------------------------------------------------------------------------------------------

%four-part header with separating middle rule.
\renewcommand{\maketitle}{
  \textbf{\@class}\hfill Homework \textbf{\@no}\vspace{-5pt}
  \makebox[\linewidth]{\rule{\linewidth}{1pt}}\\
  \textbf{\@author}\hfill \texttt{\@id}\\
}
%macro definitions for the `\maketitle` command.
\def\@class{\unskip}
\newcommand{\class}[1]{\def\@class{#1}}

\def\@no{\unskip}
\newcommand{\no}[1]{\def\@no{#1}}

\def\@author{Neil Vyas}
\renewcommand{\author}[1]{\def\@author{#1}}

\def\@id{nv4594}
\newcommand{\id}[1]{\def\@id{#1}}
%for boxing questions so that they stand out.
%if you provide a number or title, it will set it in bold on top.
%TODO: Maybe set short titles (numbers) in a column on the left for vertical space saving?

\newenvironment{question}[1][\unskip]{
  \begin{mdframed}[linecolor=black, linewidth=1pt]
  \textbf{#1}}{
  \end{mdframed}
}

%For setting multi-part questions; uses the (a) ... (b) ... convention.
\newlist{qparts}{enumerate}{3}
\setlist[qparts]{label=(\alph*), itemsep=0em, topsep=1pt}

\endinput
