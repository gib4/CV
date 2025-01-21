% Intro Options
\ProvidesClass{dske-resume-openfont}[2025/01/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Essential packages
\usepackage[hmargin=1.0cm, vmargin=0.7cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\usepackage{titlesec}
\usepackage{cite}

% Publications
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{accent}{RGB}{0, 70, 140}
\definecolor{heading}{RGB}{106, 106, 106}
\definecolor{subheading}{RGB}{51, 51, 51}
\definecolor{datecolor}{RGB}{102, 102, 102}

% Set main fonts
\usepackage{fontspec}

% Main font setup with system fonts
\setmainfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

% Heading fonts - replacing Helvetica with Arial
\setsansfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

% Name font
\newfontfamily\namefont{Times New Roman}[
    BoldFont=Times New Roman Bold
]

% For the main content (clean sans-serif like in the image)
\setmainfont[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic,
    BoldItalicFont=Arial Bold Italic
]{Arial}

% For sections that were using Lato/Raleway, we'll use these fonts instead
\newfontfamily\headingfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]
\newfontfamily\subheadingfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
    \begin{textblock}{60}(155,5)
        \color{datecolor}
        \fontsize{8pt}{10pt}\selectfont 
        Last Updated on \today
    \end{textblock}
}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{36pt}{54pt}
\namefont #1 
\namefont #2
} \\[5pt]
\centering{
\color{heading}
\sffamily\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{heading}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section formatting
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

\titleformat{\section}{
    \color{heading}\scshape
    \fontsize{14pt}{20pt}\selectfont
    \raggedright\uppercase
}{}{0em}{}

\titleformat{\subsection}{
    \color{subheading}
    \fontsize{11pt}{11pt}\selectfont
    \bfseries\uppercase
}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheading}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheading}\raggedright\scshape\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{datecolor}\raggedright\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% Section with lines command
\newcommand{\sectionwithlines}[1]{%
    \vspace{0.3cm}%
    {\noindent\color{accent}\rule{\linewidth}{0.4pt}}%
    \section{#1}%
    {\noindent\color{accent}\rule{\linewidth}{0.4pt}}%
    \vspace{0.2cm}%
}