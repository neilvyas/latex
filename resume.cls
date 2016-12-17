\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/01/04 Standard Resume Format]
\LoadClass[9pt]{extarticle}
%----------------------------------------------------------------------------------------------------
%REQUIREMENTS
%----------------------------------------------------------------------------------------------------
\RequirePackage[vmargin=0.5in, hmargin=1in]{geometry}
\RequirePackage[T1]{fontenc}                    % better glyphs
\RequirePackage{nopageno}                       % Remove page numbering.
\RequirePackage{tgpagella}                      % Palatino
\RequirePackage[sfdefault]{classico}            % Free clone of Optima.
\RequirePackage{inconsolata}
\RequirePackage{adjustbox}                      % getting tables to fit.
\RequirePackage{enumitem}
%----------------------------------------------------------------------------------------------------
%SECTION FORMATTING
%----------------------------------------------------------------------------------------------------
\setlength\parindent{0em}
% For some reason, you must have no blank lines between `\section` and the content for consistent
%  vertical spacing around the section title (above and below).
\renewcommand{\section}[1]{
  \begin{center}
  \vspace{6pt}\textbf{#1}\vspace{6pt}\\
  {\hrule height 1pt}
  \end{center}
}

\setlist{noitemsep}
\setlist[itemize]{rightmargin=1.5in}
%----------------------------------------------------------------------------------------------------
%HEADER FORMATTING
%----------------------------------------------------------------------------------------------------
\makeatletter
%center aligned header with name prominently at the top.
\renewcommand{\maketitle}{
  \begin{center}
    {\Huge\textbf{\@name}} \\
    \begin{tabular}{c c}
      \@github & \@email %& \@linkedin
    \end{tabular} \\
    \begin{tabular}{c c}
      \@phone & \@website
    \end{tabular} 
  \end{center}
}

%macro definitions for the `\maketitle` command.
\def\@name{\unskip}
\newcommand{\name}[1]{\def\@name{#1}}

\def\@github{\unskip}
\newcommand{\github}[1]{\def\@github{#1}}

\def\@email{\unskip}
\newcommand{\email}[1]{\def\@email{#1}}

\def\@linkedin{\unskip}
\newcommand{\linkedin}[1]{\def\@linkedin{#1}}

\def\@phone{\unskip}
\newcommand{\phone}[1]{\def\@phone{#1}}

\def\@website{\unskip}
\newcommand{\website}[1]{\def\@website{#1}}
%----------------------------------------------------------------------------------------------------
%ITEM FORMATTING
%----------------------------------------------------------------------------------------------------


\newcommand{\experienceHeader}[5]{
    \textbf{#1}, #2 \hfill{\small #3} \\
    \emph{#5} \\
    #4
}


% ProjectName, Description, link
\newcommand{\projectHeader}[3]{
  \textbf{#1}\\
  \emph{#2}\\
  \texttt{#3}
}

%----------------------------------------------------------------------------------------------------
%CLEANUP
%----------------------------------------------------------------------------------------------------
\makeatother 
\endinput
