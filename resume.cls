\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/01/04 Standard Resume Format]
\LoadClass[9pt]{extarticle}
%----------------------------------------------------------------------------------------------------
%REQUIREMENTS
%----------------------------------------------------------------------------------------------------
\RequirePackage[vmargin=0.5in, hmargin=1in]{geometry}
\RequirePackage{nopageno}                       % Remove page numbering.
\RequirePackage{tgpagella}                      % Palatino
%\RequirePackage[scaled]{helvet}                % Helvetica, scaled 95%
\RequirePackage[sfdefault]{classico}                       % Free clone of Optima.
\RequirePackage[T1]{fontenc}                    % better glyphs
\RequirePackage{adjustbox}                      % getting tables to fit.
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
%----------------------------------------------------------------------------------------------------
%HEADER AND MACROS
%----------------------------------------------------------------------------------------------------
\makeatletter
%center aligned header with name prominently at the top.
\renewcommand{\maketitle}{
  \begin{center}
    {\huge\textbf{\@name}} \\
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
%CLEANUP
%----------------------------------------------------------------------------------------------------
\makeatother 
\endinput
