% Intro Options
\ProvidesClass{nussbaum-resume}[2016/07/26 Resume]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.0cm, vmargin=1cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[english]{babel}
\usepackage[english]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{primary}{HTML}{121212} % #121212 main text color
\definecolor{headings}{HTML}{585858} % #585858 subheadings headings
\definecolor{detail}{HTML}{585858} % #585858 subheadings headings
\definecolor{color}{HTML}{133C55} % #133C55 item headings

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Scale=0.90, Path = fonts/gotham/]{Gotham-Light}
\linespread{.9}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/gotham/]{Gotham-XLight}
\newcommand{\custombold}[1]{\color{color}\fontspec[Path = fonts/gotham/]{Gotham-Book}\selectfont #1 \normalfont}

% Name command
\newcommand{\namesection}[2]{
	\centering{
		\sffamily
		\color{color}
		\fontsize{25pt}{10cm}
		\fontspec[Path = fonts/gotham/]{Gotham-Bold}
		\selectfont #1
	} \\
	\vspace{5pt}
	\centering{
		\color{headings}
		\fontspec[Path = fonts/sentinel/]{Sentinel-Light}
		\fontsize{11pt}{14pt}
		\selectfont #2
	}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.2pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/gotham/]{Gotham-Medium}\fontsize{14pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{
	\color{color}
	\fontspec[Path = fonts/gotham/]{Gotham-Medium}
	\fontsize{10pt}{10pt}
	\selectfont\bfseries\uppercase
}{}{0em}{}

\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{color}
\fontspec[Path = fonts/gotham/]{Gotham-Medium}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{color}\raggedright\fontspec[Path = fonts/sentinel/]{Sentinel-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Detail command
\newcommand{\detail}[1]{\color{detail}\raggedright\fontspec[Path = fonts/sentinel/]{Sentinel-Book}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{10pt}}

% Bullet Lists with fewer gaps command
\newenvironment{listitems}{
	\vspace{-\topsep}
	\begin{itemize}
	\itemsep1pt
	\parskip0pt
	\parsep0pt
}{
	\end{itemize}
	\vspace{-\topsep}
}
