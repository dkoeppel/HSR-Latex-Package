\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{HSR}[2012/04/23 HSR-Spezial Klasse]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[]{article}

\RequirePackage{HSRColors}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel,varioref}
\RequirePackage{graphicx}
\RequirePackage[scaled]{uarial}
\RequirePackage[T1]{fontenc}
\RequirePackage[
	headheight=25.5mm, % Gleich hoch wie HSR Logo!
	headsep=5mm,
	top=40mm,
	left=25mm,
	right=42mm,
	%inner=21mm,
	%outer=42mm,
	bottom=30mm,
	marginparwidth=32mm]{geometry}
\RequirePackage{fancyhdr, calc}

\newcommand{\arialForHeader}{%
\fontfamily{ua1}\fontseries{m}\fontsize{10}{11.5}\selectfont}

\pagestyle{fancy}
\fancyhf{}
	\fancyhead[L]{
	\raisebox{-3.6mm}{\includegraphics[width=60.5mm]{images/HSR_Logo_CMYK.pdf}}}
	\fancyhead[R] {
	\arialForHeader \titleinfo\\
	\nouppercase\leftmark\\
	\vspace{1.7mm}
}

\fancyfoot[EL,OR]{\arialForHeader \thepage}
\fancyfoot[OL,ER]{\arialForHeader \authorinfo, \today}
\renewcommand{\footrulewidth}{0.5pt}
\renewcommand{\headrulewidth}{0.5pt}




%%%%%%%%%%%%%%%%%%%%%%%%%
%% Margin-Notes Design %%
%%%%%%%%%%%%%%%%%%%%%%%%%
\let\OldMarginPar\marginpar
\renewcommand{\marginpar}[1]{\OldMarginPar{\textit{#1}}}