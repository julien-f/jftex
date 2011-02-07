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
\ProvidesClass{jfcv}[2011/01/04 v0.1 jftexcv]

%%%%%

\LoadClass{article}

%%%%%

\RequirePackage{kvoptions}

\RequirePackage[parskip=false]{jftex} % For xelatex compatibility.

%%%%%

\SetupKeyvalOptions{
  family=@jftexcv@makeheader,
  prefix=@jftexcv@makeheader@
}

%\DeclareStringOption[male]{gender} % male|female
\DeclareStringOption[John]{firstname}
\DeclareStringOption[Smith]{lastname}

\DeclareStringOption[the 20\textup{th} of July 1969]{birthdate}
\DeclareStringOption[the Moon]{birthplace}

\DeclareStringOption[Martian]{nationality}

\DeclareStringOption[54 avenue des Lilas, 99 Maville]{address}
\DeclareStringOption[john.smith@foo.bar]{email}
\DeclareStringOption[(+33)~0.00.00.00.00]{phone}

%\DeclareStringOption[single]{maritalstatus} % single|married|divorced|widowed

% An image.
\DeclareStringOption{photography}

% The CV's title.
\DeclareStringOption{title}

%%%%%

\newcommand{\makeheader}[1]{
  \setkeys{@jftexcv@makeheader}{#1}

  \noindent \textbf{\@jftexcv@makeheader@firstname{} \textsc{\@jftexcv@makeheader@lastname}}\\
  \printbirth{\@jftexcv@makeheader@birthdate}{\@jftexcv@makeheader@birthplace}\\
  \printnationality{\@jftexcv@makeheader@nationality}

  \vspace{0.5em}

  \noindent \@jftexcv@makeheader@address{}.\\
  \@jftexcv@makeheader@phone{}\\
  \email{\@jftexcv@makeheader@email}

  \vspace{1em}

  \centering
  \noindent \Large{\@jftexcv@makeheader@title}
}

%%%%%

\newcommand{\printbirth}[2]{%
  Born the #1 at #2%
}

\newcommand{\printnationality}[1]{%
  Nationality: #1%
}
