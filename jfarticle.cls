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
% 2011-04-04 - v0.3.1
% - The meta-commands previously introduced have been moved into jftex.
% 2011-04-01 - v0.3.0
% - The “\author”, “\date”, “\institute”,  “\title” and “\subtitle” commands now
%   have a optional parameter which is a short version of the mandatory one.
% - All  the commands above  now have  two related  commands, for  instance, for
%   “\author”:
%   - “\theauthor”: which is the value previously entered plus an “\xspace”;
%   - “\theauthorshort”: which is the short version plus an “\xspace”.
% - The code now uses the new “\IfValueTF” command.
% 2011-04-01 - v0.2.0
% - There is now a “\subtitle” command.
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jfarticle}[2011/04/01 v0.3.1 jfarticle]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sets the geometry.
\RequirePackage[a4paper,margin=2cm]{geometry}

\RequirePackage[metacommands]{jftex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\maketitle}{
  \noindent \rule{\linewidth}{0.2mm}

  \noindent \IfValueTF{\theinstitute}{
    \textbf{\theinstitute}
  }{\phantom{}} \hfill \textbf{\thedate}

  \vspace{-0.5em}

  \noindent \rule{\linewidth}{0.2mm}

  \vspace{0.75cm}

  \begin{center}
    \noindent \textbf{\Large \thetitle}
    \IfValueTF{\thesubtitle}{%
      \\[0.5cm]
      \noindent \textit{\thesubtitle}
    }{}

    \vspace{1cm}

    \noindent \theauthor
  \end{center}

  \vspace{0.25cm}

  \noindent \rule{\linewidth}{0.2mm}

  \vspace{1cm}
}
