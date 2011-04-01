%%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% Author:
%   Julien Fontanet <julien.fontanet@isonoe.net>
%
% 2011-04-01 - v0.1
% - First version.
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jfreport}[2011/04/01 v0.1 jfreport]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[12pt]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sets the geometry.
\RequirePackage[a4paper,margin=2cm]{geometry}

\RequirePackage[fancyhdr]{jftex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% These commands allow one to enter various meta-data about the report.
\renewcommand{\author}[2][\NoValue]{%
  \gdef\@jfreport@author{#2}
  \gdef\@jfreport@author@short{\IfValueTF{#1}{#1}{#2}}
}
\renewcommand{\date}[2][\NoValue]{%
  \gdef\@jfreport@date{#2}%
  \gdef\@jfreport@date@short{\IfValueTF{#1}{#1}{#2}}%
}
\newcommand{\institute}[2][\NoValue]{%
  \gdef\@jfreport@institute{#2}%
  \gdef\@jfreport@institute@short{\IfValueTF{#1}{#1}{#2}}%
}
\renewcommand{\title}[2][\NoValue]{%
  \gdef\@jfreport@title{#2}%
  \gdef\@jfreport@title@short{\IfValueTF{#1}{#1}{#2}}%
}
\newcommand{\subtitle}[2][\NoValue]{%
  \gdef\@jfreport@subtitle{#2}%
  \gdef\@jfreport@subtitle@short{\IfValueTF{#1}{#1}{#2}}%
}

% These commands are  provided to the user to  access the information previously
% entered.
\newtextcommand{\theauthor}{\@jfreport@author}
\newtextcommand{\theauthorshort}{\@jfreport@author@short}
\newtextcommand{\thedate}{\@jfreport@date}
\newtextcommand{\thedateshort}{\@jfreport@date@short}
\newtextcommand{\theinstitute}{\@jfreport@institute}
\newtextcommand{\theinstituteshort}{\@jfreport@institute@short}
\newtextcommand{\thetitle}{\@jfreport@title}
\newtextcommand{\thetitleshort}{\@jfreport@title@short}
\newtextcommand{\thesubtitle}{\@jfreport@subtitle}
\newtextcommand{\thesubtitleshort}{\@jfreport@subtitle@short}

% Initialize default values.
\author{Anonymous}
\date{\today}
\institute{\NoValue}
\title{Untitled}
\subtitle{\NoValue}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sets the page style.
\pagestyle{fancy}

% Clears the headers and the footers.
\fancyhf{}

\fancyhead[RO, LE]{\textbf{\thepage}}
\fancyhead[RE, LO]{\textbf{\textit{\rightmark}}}

\fancyfoot[LE, RO]{\textbf{\theauthorshort}}
%\fancyfoot[C]{\bfseries\@course}
\fancyfoot[RE, LO]{\textbf{\thetitleshort}}

\renewcommand{\headrulewidth}{0.5pt}
\addtolength{\headheight}{14pt}
\renewcommand{\footrulewidth}{0.5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\maketitle}{
  \begin{titlepage}

    \thetitle

    \theauthor

    \thedate

  \end{titlepage}
}
