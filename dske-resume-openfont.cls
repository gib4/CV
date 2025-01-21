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
% Essential packages - cleaned up version
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}  % Used for page margins
\PassOptionsToPackage{dvipsnames}{xcolor}               % Used for colors
\usepackage{xcolor}
\usepackage[hidelinks]{hyperref}                        % Used for links in contacts
\usepackage[absolute]{textpos}                          % Used for lastupdated positioning
\usepackage{fontspec}                                   % Used for font configuration
\usepackage{titlesec}                                   % Used for section formatting

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
\setlength{\borderdist}{0.7cm}

% Name Section spacing
\newlength{\nameMarginTop}
\setlength{\nameMarginTop}{0.01cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           COLUMN #1 SETTINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font sizes and line spacing
\newlength{\leftColumnFont}
\setlength{\leftColumnFont}{8pt}
\newlength{\leftColumnLineSpace}
\setlength{\leftColumnLineSpace}{1.2\leftColumnFont}

\newlength{\leftSubsectionSize}
\setlength{\leftSubsectionSize}{9pt}
\newlength{\leftSubsectionLineSpace}
\setlength{\leftSubsectionLineSpace}{1.2\leftSubsectionSize}

\newlength{\leftDescriptSize}
\setlength{\leftDescriptSize}{9pt}
\newlength{\leftDescriptLineSpace}
\setlength{\leftDescriptLineSpace}{1.2\leftDescriptSize}

\newlength{\leftContactFontSize}
\setlength{\leftContactFontSize}{9pt}
\newlength{\leftContactLineSpace}
\setlength{\leftContactLineSpace}{1.2\leftContactFontSize}

% Vertical spacing
\newlength{\leftTinyGap}
\setlength{\leftTinyGap}{0.1em}
\newlength{\leftSmallGap}
\setlength{\leftSmallGap}{0.2cm}
\newlength{\leftMediumGap}
\setlength{\leftMediumGap}{0.3em}

% Section spacing
\newlength{\leftSectionPadding}
\setlength{\leftSectionPadding}{0.4em}

% Contact section specific spacing
\newlength{\leftContactIconSpace}
\setlength{\leftContactIconSpace}{0.4em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           COLUMN #2 SETTINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font sizes and line spacing
\newlength{\rightColumnFont}
\setlength{\rightColumnFont}{9pt}
\newlength{\rightColumnLineSpace}
\setlength{\rightColumnLineSpace}{1.2\rightColumnFont}

\newlength{\rightDescriptSize}
\setlength{\rightDescriptSize}{10pt}
\newlength{\rightDescriptLineSpace}
\setlength{\rightDescriptLineSpace}{1.2\rightDescriptSize}

% Column spacing
\newlength{\rightColumnSpace}
\setlength{\rightColumnSpace}{1.5em}

% Section spacing
\newlength{\rightSectionSpace}
\setlength{\rightSectionSpace}{0.12cm}
\newlength{\rightRuleWidth}
\setlength{\rightRuleWidth}{0.4pt}
\newlength{\rightSubsectionSpace}
\setlength{\rightSubsectionSpace}{0.6em}

% Icon spacing
\newlength{\rightIconSpace}
\setlength{\rightIconSpace}{0.5em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           SPACING VARIABLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font sizes
\newlength{\smallerfont}
\setlength{\smallerfont}{8pt}
\newlength{\smallerlinespace}
\setlength{\smallerlinespace}{10pt}

% Vertical spacing
\newlength{\tinygap}
\setlength{\tinygap}{0.1em}
\newlength{\mediumgap}
\setlength{\mediumgap}{0.3em}

% Icon spacing
\newlength{\iconspacesmall}
\setlength{\iconspacesmall}{0.3em}

% Section spacing
\newlength{\sectionpadding}
\setlength{\sectionpadding}{0.4em}

% Contact section specific spacing
\newlength{\contacticonspace}
\setlength{\contacticonspace}{0.4em}
\newlength{\contactlinespace}
\setlength{\contactlinespace}{1.2em}
\newlength{\contactfontsize}
\setlength{\contactfontsize}{9pt}

% Font sizes for left column
\newlength{\leftsubsectionsize}
\setlength{\leftsubsectionsize}{10pt}  % Smaller than default subsection size

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              FONT CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fontspec}

% Main font - Raleway for general text
\setmainfont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic
]

% Sans-serif font - Raleway for modern look
\setsansfont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic
]

% Special font for name - First name in Thin, Surname in Regular
\newfontfamily\firstnamefont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Thin
]

\newfontfamily\surnamefont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Regular
]

% Heading font - Raleway for elegant headings
\newfontfamily\headingfont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Medium,
    BoldFont = *-Bold,
    ItalicFont = *-MediumItalic
]

% Subheading font - Raleway for clean look
\newfontfamily\subheadingfont{Raleway}[
    Path = fonts/raleway/,
    Extension = .ttf,
    UprightFont = *-Medium,
    BoldFont = *-SemiBold,
    ItalicFont = *-MediumItalic
]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            COMMAND DEFINITIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Last Updated Date with background
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
    \begin{textblock}{60}(155,7)
        \colorbox{white}{%
            \color{datecolor}
            \fontsize{8pt}{10pt}\selectfont 
            Last Updated on \today
        }
    \end{textblock}
}

% Name Section
\newcommand{\namesection}[3]{
    \vspace*{\nameMarginTop}
    \centering{
        \color{heading}\fontsize{36pt}{54pt}
        \firstnamefont #1 
        \surnamefont #2
    } \\[5pt]
    \centering{
        \color{heading}
        \sffamily\fontsize{11pt}{14pt}\selectfont #3
    }
    \noindent\makebox[\linewidth]{\color{heading}\rule{\dimexpr\paperwidth-2\borderdist\relax}{0.2pt}}
    \vspace{-20pt}
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

% Description Text for left column
\newcommand{\leftdescript}[1]{
    \color{subheading}\raggedright\scshape
    \fontsize{\the\leftDescriptSize}{\the\leftDescriptLineSpace}\selectfont
    {#1 \\} \normalfont
}

% Description Text for right column
\newcommand{\rightdescript}[1]{
    \color{subheading}\raggedright\scshape
    \fontsize{\the\rightDescriptSize}{\the\rightDescriptLineSpace}\selectfont
    {#1 \\} \normalfont
}

% Location Text
\newcommand{\location}[1]{
    \color{datecolor}\raggedright\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont
}

% Tight Bullet Lists
\newenvironment{tightemize}{
    \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt
}{\end{itemize}\vspace{-\topsep}}


% TITLE SECTION OPTIONS
% Section with Lines
\newcommand{\sectionwithlines}[1]{%
    \vspace{\rightSectionSpace}%
    {\noindent\color{accent}\rule{\linewidth}{\rightRuleWidth}}%
    \vspace{-0.3em}%
    \section{#1}%
    \vspace{-0.3em}%
    {\noindent\color{accent}\rule{\linewidth}{\rightRuleWidth}}%
    \vspace{\rightSectionSpace}%
}

% Section with Line above
\newcommand{\sectionwithlineabove}[1]{%
    \vspace{\rightSectionSpace}%
    \section{#1}%
    {\noindent\color{accent}\rule{\linewidth}{\rightRuleWidth}}%
    \vspace{\rightSectionSpace}%
}

% Section with title and line
\newcommand{\customSection}[1]{%
    \vspace{\rightSectionSpace}%
    \noindent% Ensure proper alignment
    {\color{heading}\scshape\fontsize{14pt}{20pt}\selectfont #1}%
    \hspace{0.5em}% Space between text and line
    {\color{accent}\leaders\hrule height 0.4pt depth 0pt\hfill}% Line with adjusted height/depth
    \par% Add newline
    \vspace{\rightSectionSpace}%
}