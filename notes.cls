
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2016/01/04 Standard Notes Format]
%TODO: copy over relevant style bits from essay.cls
\LoadClass{essay}

\RequirePackage{mdframed}
\RequirePackage{mymath}

%TODO: change \maketitle to not include date field
\setlength{\parindent}{0pt}

\newenvironment{aside}[1]{
  \begin{mdframed}[linecolor=black, linewidth=1pt]
    \textbf{Aside:} #1\\
    }
    {
  \end{mdframed}}

\endinput
