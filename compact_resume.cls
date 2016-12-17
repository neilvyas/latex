\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/01/04 Standard Resume Format]
\LoadClass[9pt]{extarticle}
%----------------------------------------------------------------------------------------------------
%REQUIREMENTS
%----------------------------------------------------------------------------------------------------
\RequirePackage[vmargin=0.5in, hmargin=0.5in]{geometry}
\RequirePackage[T1]{fontenc}                    % better glyphs
\RequirePackage{nopageno}                       % Remove page numbering.
\RequirePackage{tgpagella}                      % Palatino
\RequirePackage[sfdefault]{classico}            % Free clone of Optima.
\RequirePackage{inconsolata}
\RequirePackage{adjustbox}                      % getting tables to fit.
\RequirePackage{enumitem}
% \RequirePackage{hyperref}
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
\setlist[itemize]{leftmargin=*}
% \setlist[itemize]{rightmargin=1.5in}
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

% To get the compiler to shutup.
\newcommand{\givencompany}{REQUIRED}
\newcommand{\givenlocation}{REQUIRED}
\newcommand{\givendates}{REQUIRED}
\newcommand{\givenposition}{REQUIRED}
\newcommand{\givendescription}{REQUIRED}



\newenvironment{experience}{
  \vspace{0.5em}

  \newcommand{\Rcompany}[1]{\renewcommand{\givencompany}{##1}}
  \newcommand{\Rlocation}[1]{\renewcommand{\givenlocation}{##1}}
  \newcommand{\Rdates}[1]{\renewcommand{\givendates}{##1}}
  \newcommand{\Rposition}[1]{\renewcommand{\givenposition}{##1}}
  \newcommand{\Rdescription}[1]{\renewcommand{\givendescription}{##1}}

  \newenvironment{experiences}{
    \begin{minipage}{0.25\linewidth}
      \textbf{\givencompany}, \givenlocation \\
      \givenposition \\
      {\small \givendates}
    \end{minipage}%
    \begin{minipage}{0.75\linewidth}
      % \emph{\givendescription}
      \begin{itemize}
    }
  {\end{itemize}\end{minipage}\vspace{0.5em}}
  }{}


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
