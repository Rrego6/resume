\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}[2017/01/29 Custom class for resume]
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\usepackage{fullpage}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
[\titlerule] % Inserts a horizontal line after the heading

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\large\textperiodcentered} #4 \ {\Large} #5
}

\newcommand{\workitems}[3] {
	\begin{itemize}
	\item #1
	\item #2
	\item #3
	\end{itemize}
}
