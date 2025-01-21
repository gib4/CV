%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              CLASS OPTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{dske-resume-openfont}[2025/01/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             REQUIRED PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page layout and margins
\usepackage[hmargin=1.0cm, vmargin=0.7cm]{geometry}

% Hyperlinks and PDF metadata
\usepackage[hidelinks]{hyperref}

% Color support
\usepackage[usenames,dvipsnames]{xcolor}

% Absolute positioning
\usepackage[absolute]{textpos}

% Date formatting
\usepackage[UKenglish]{isodate}

% Section formatting
\usepackage{titlesec}

% Bibliography
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           THEME CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Color Scheme
\definecolor{primary}{RGB}{43, 43, 43}        % Main text color
\definecolor{accent}{RGB}{0, 70, 140}         % Section lines and borders
\definecolor{heading}{RGB}{106, 106, 106}     % Section headings
\definecolor{subheading}{RGB}{51, 51, 51}     % Subsection headings
\definecolor{datecolor}{RGB}{102, 102, 102}   % Dates and locations
\definecolor{bordercolor}{RGB}{173, 216, 230} % Border color (light pastel blue)
\definecolor{backgroundcolor}{RGB}{240, 240, 240} % Background color (light gray)

% Border Settings
\newlength{\borderdist}
\setlength{\borderdist}{0.75cm}

% Column #1 Settings
\newlength{\sectionvspace}     % Vertical space around sections
\setlength{\sectionvspace}{0.3cm}
\newlength{\rulewidth}         % Thickness of section lines
\setlength{\rulewidth}{0.4pt}
\newlength{\subsectionspace}   % Space between subsections
\setlength{\subsectionspace}{0.5em}

% Icon Settings
\newcommand{\iconspace}{0.5em} % Space after icons

% Font Settings
\newlength{\columnTextSize}    % Main text size in columns
\setlength{\columnTextSize}{9pt}
\newlength{\columnLineSpace}   % Line spacing in columns
\setlength{\columnLineSpace}{11pt}

% Column #2 Settings
\newlength{\columnspace}       % Space between columns
\setlength{\columnspace}{1.5em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              FONT CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fontspec}

% Main font
\setmainfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

% Sans-serif font for headings
\setsansfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

% Special font for name
\newfontfamily\namefont{Times New Roman}[
    BoldFont=Times New Roman Bold
]

% Main content font with all variants
\setmainfont[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic,
    BoldItalicFont=Arial Bold Italic
]{Arial}

% Section fonts
\newfontfamily\headingfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]
\newfontfamily\subheadingfont{Arial}[
    BoldFont=Arial Bold,
    ItalicFont=Arial Italic
]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            COMMAND DEFINITIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Last Updated Date
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
    \begin{textblock}{60}(155,5)
        \color{datecolor}
        \fontsize{8pt}{10pt}\selectfont 
        Last Updated on \today
    \end{textblock}
}

% Name Section
\newcommand{\namesection}[3]{
    \centering{
        \fontsize{36pt}{54pt}
        \namefont #1 
        \namefont #2
    } \\[5pt]
    \centering{
        \color{heading}
        \sffamily\fontsize{11pt}{14pt}\selectfont #3
    }
    \noindent\makebox[\linewidth]{\color{heading}\rule{\paperwidth}{0.4pt}}
    \vspace{-15pt}
}

% Section Formatting
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

% Section Style
\titleformat{\section}{
    \color{heading}\scshape
    \fontsize{14pt}{20pt}\selectfont
    \raggedright\uppercase
}{}{0em}{}

% Subsection Style
\titleformat{\subsection}{
    \color{subheading}
    \fontsize{11pt}{11pt}\selectfont
    \bfseries\uppercase
}{}{0em}{}

% Running Subsection
\newcommand{\runsubsection}[1]{
    \color{subheading}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont
}

% Description Text
\newcommand{\descript}[1]{
    \color{subheading}\raggedright\scshape\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont
}

% Location Text
\newcommand{\location}[1]{
    \color{datecolor}\raggedright\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont
}

% Tight Bullet Lists
\newenvironment{tightemize}{
    \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt
}{\end{itemize}\vspace{-\topsep}}

% Section with Lines
\newcommand{\sectionwithlines}[1]{%
    \vspace{\sectionvspace}%
    {\noindent\color{accent}\rule{\linewidth}{\rulewidth}}%
    \section{#1}%
    {\noindent\color{accent}\rule{\linewidth}{\rulewidth}}%
    \vspace{\sectionvspace}%
}