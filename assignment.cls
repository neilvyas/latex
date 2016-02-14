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
%in case you want some nice red accents like 
% https://www.usenix.org/system/files/login/articles/08_lloyd_41-43_online.pdf
\definecolor{framecolor}{HTML}{EE3F34}
%sets a nice four-part header on top: Class, Assignment, [[Name]], [[UTEID]]
\newcommand{\header}[2]{
  \textcolor{black}{
  \textbf{#1}\hfill\textbf{#2}\vspace{-5pt}
  \makebox[\linewidth]{\textcolor{black}{\rule{\linewidth}{1pt}}}\\
  \textbf{Neil Vyas}\hfill nv4594\\
  }
}

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
