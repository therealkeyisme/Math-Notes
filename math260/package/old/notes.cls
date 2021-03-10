%MIT License

%Copyright (c) 2020 Dev

%Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

%The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%SOFTWARE.

% The project can be found at 
% https://github.com/dev-aditya/LaTeX-template


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2020/11/01 notes class]
\LoadClass[a4paper,oneside]{book}

\RequirePackage[
backend=biber,
style=numeric,
citestyle=numeric-comp ,
sorting=none 
]{biblatex}
\RequirePackage{csquotes}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{lmodern}
\RequirePackage[english]{babel}
\RequirePackage{geometry}
\geometry{margin=1.5in}
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=cyan,
}

%\RequirePackage[]{fncychap}
\RequirePackage{xpatch}
\RequirePackage{blindtext}
\RequirePackage{graphics}
\RequirePackage{xcolor}

\makeatletter
\def\thickhrulefill{\leavevmode\leaders \hrule height 1pt \hfill \kern \z@}
\def\@makechapterhead#1{%
  %\vspace*{60\p@}%
  {\parindent \z@ \centering
          {\color{black}
            \scshape \Large \textbf{\@chapapp{} \thechapter} 
		  }
		  \par\nobreak
		  \thickhrulefill
        \par\nobreak
        \interlinepenalty\@M
	{\Huge \bf #1 \par}
    \thickhrulefill
    %\par\nobreak
    \vskip 40\p@
  }}
\makeatother

\makeatletter
\xpatchcmd{\@makeschapterhead}{%
  \Huge \bfseries  #1\par\nobreak%
}{%
  \Huge \bfseries\centering #1\par\nobreak%
}{\typeout{Patched makeschapterhead}}{\typeout{patching of @makeschapterhead failed}}

\xpatchcmd{\@makechapterhead}{%
  \huge\bfseries \@chapapp\space \thechapter
}{%
  \huge\bfseries\centering \@chapapp\space \thechapter
}{\typeout{Patched @makechapterhead}}{\typeout{Patching of @makechapterhead failed}}

\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\def\@seccntformat#1{\@ifundefined{#1@cntformat}%
	{\csname the#1\endcsname\quad}%      default
	{\csname #1@cntformat\endcsname}}%   individual control
\newcommand{\section@cntformat}{\S\thesection\quad}
\newcommand{\subsection@cntformat}{\S\thesubsection\quad}
\newcommand{\subsubsection@cntformat}{\S\thesubsubsection\quad}
\makeatletter



