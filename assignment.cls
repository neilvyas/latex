\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2015/10/23 Standard homework format]
\LoadClass{article}
%----------------------------------------------------------------------------------------------------
%REQUIREMENTS
%----------------------------------------------------------------------------------------------------
\RequirePackage{xparse}
\RequirePackage{enumitem}
\RequirePackage{mdframed}
%----------------------------------------------------------------------------------------------------
%GENERAL PAGE SETTINGS
%----------------------------------------------------------------------------------------------------
\RequirePackage[a4paper, total={6in, 10in}]{geometry}
\RequirePackage{heuristica}
\RequirePackage[heuristica,vvarbb,bigdelims]{newtxmath}
\RequirePackage[T1]{fontenc}
\setlength\parindent{0pt}
%----------------------------------------------------------------------------------------------------
%SECTION FORMATTING
%----------------------------------------------------------------------------------------------------
%sets a nice four-part header on top: Class, Assignment, [[Name]], [[UTEID]]
\newcommand{\header}[2]{
  \textbf{#1}\hfill\textbf{#2}\vspace{-5pt}
  \makebox[\linewidth]{\rule{\linewidth}{2pt}} \\
  \textbf{Neil Vyas}\hfill nv4594\\
}

%for boxing questions so that they stand out.
%if you provide a number or title, it will set it in bold on top.
%TODO: Maybe set short titles (numbers) in a column on the left for vertical space saving?
\NewDocumentCommand{\question}{ o m }{
  \begin{mdframed}
    \IfValueT{#1}{\textbf{#1}}
    #2
  \end{mdframed}
}

%For setting multi-part questions; uses the (a) ... (b) ... convention.
\newlist{qparts}{enumerate}{3}
\setlist[qparts]{label=(\alph*), itemsep=0em, topsep=1pt}

\endinput
