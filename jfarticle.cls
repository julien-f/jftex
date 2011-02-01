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
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jftexcv}[2011/01/04 v0.1 jftexcv]

%%%%%

\LoadClass{article}

%%%%%

\RequirePackage{jftex}

%%%%%

\renewcommand{\author}[1]{%
  \gdef\@jftex@author{#1}%
}
\renewcommand{\date}[1]{%
  \gdef\@jftex@date{#1}%
}
\newcommand{\institute}[1]{%
  \gdef\@jftex@institute{#1}%
}
\renewcommand{\title}[1]{%
  \gdef\@jftex@title{#1}%
}

\author{Anonymous}
\date{\today}
\institute{\phantom} % Nothing but does not screw up the layout.
\title{Untitled}

\renewcommand{\maketitle}{
  \noindent \rule{\linewidth}{0.2mm}

  \noindent \textbf{\@jftex@institute} \hfill \textbf{\@jftex@date}

  \vspace{-0.5em}

  \noindent \rule{\linewidth}{0.2mm}

  \vspace{1cm}

  \begin{center}
    \noindent \textbf{\Large \@jftex@title}

    \vspace{1cm}

    \noindent \@jftex@author
  \end{center}

  \vspace{1cm}

  \noindent \rule{\linewidth}{0.2mm}

  \vspace{1cm}
}
