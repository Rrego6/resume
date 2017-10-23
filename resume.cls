\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\pagenumbering{gobble}

\setcounter{secnumdepth}{1} % only chapter and sections will be numbered
\setcounter{tocdepth}{3}  

\ProvidesClass{resume}[2017/01/29 Custom class for resume]
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{paralist}
\usepackage{parskip}
\usepackage{enumitem}
\RequirePackage[margin=.5in]{geometry}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
[\titlerule] % Inserts a horizontal line after the heading

\titlespacing\section{0pt}{3pt}{2pt}

\titlespacing\subsection{0pt}{\parskip}{-\parskip}
\titleformat*{\subsection}{\bfseries}
%\titlespacing\subsection{0pt}{0pt}{0pt}

\newcommand{\joblocation}[2]{
\vspace{-2px}
\subsection[#1]{#1\hfill#2}
}

\newcommand{\titledate}[2]{
\begin{flushright}
\vspace{-2px}
\textit{#1}\hfill#2
\end{flushright}
}

\newcommand{\titledatedescrip}[3]{\vspace{-2px}\textit{#1}\hfill#2\vspace{-2px}\\#3
}


\usepackage{parskip}

\newcommand{\name}[1]{
  \centerline{\LARGE{#1}}
}

\newcommand{\contact}[3]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
}

\newcommand{\workitems}[3] {
	\begin{itemize}
	\item #1
	\item #2
	\item #3
	\end{itemize}
}

% \newenvironment{myitemize}
% { \begin{itemize}
% 	\setlist{nosep, topsep=0pt}
% 	\setlength{\itemsep}{0pt}
% 	\setlength{\parskip}{0pt}
% 	\setlength{\parsep}{0pt}     }
% { \end{itemize}                  } 


\newenvironment{myitemize}
{ 
	\vspace{-5px}
	\begin{compactitem} }
{ \end{compactitem}                  } 
