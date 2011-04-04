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
% 2011-04-04 - v0.1.1
% - The metacommands have been moved into jftex to avoid code duplication.
% - Initial “\maketitle” layout.
% 2011-04-01 - v0.1
% - First version.
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jfreport}[2011/04/01 v0.1.1 jfreport]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[12pt]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sets the geometry.
\RequirePackage[a4paper,margin=2cm]{geometry}

\RequirePackage[fancyhdr,metacommands]{jftex}

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
    \noindent \IfValueTF{\theinstitute}{\theinstitute}{\phantom{}}

    \vspace{3cm}

    \noindent \rule{\linewidth}{0.5mm}

    \vspace{1cm}

    \noindent \huge{\thetitle}

    \vspace{1cm}

    \IfValueTF{\thesubtitle}{
      \begin{flushright}
        \Large{\thesubtitle}
      \end{flushright}
    }{}

    \noindent \rule{\linewidth}{1mm}

    \begin{flushright}
      \normalsize{\thedate}
    \end{flushright}

    \vfill

    \noindent \textbf{\large{\theauthor}}
  \end{titlepage}
}
