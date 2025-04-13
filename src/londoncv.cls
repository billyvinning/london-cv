\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{londoncv}[2014/08/16 CV class]
\LoadClass[a4paper,10pt]{article}

\RequirePackage[a4paper,margin=0.8in,bottom=0.8in]{geometry}
\RequirePackage{london}
\RequirePackage{multicol}
\RequirePackage{enumitem}

\pagestyle{empty}

\newcommand{\faicon}[1]{\mbox{#1}}
\newcommand{\faitem}[1]{\item[\faicon{#1}]}

\def\cvcolumnsep{36pt}
\newenvironment{multicolsection}{
    \setlength\columnsep{\cvcolumnsep}
    \begin{multicols*}{2}
}{
    \end{multicols*}
}

\newcommand\chronologicalitem[5]
{
\noindent
\begin{minipage}[t]{.2\textwidth}
#1
\end{minipage}
\begin{minipage}[t]{.8\textwidth}
{ \bf #2 } \hfill #4 \par {#3}
#5
\end{minipage}
\medskip \par
}

\newcommand\declarecvsection[1]
{
\sectionrule

\noindent {\sc \textls{#1}}
\bigskip
}

\newenvironment{cvcontainer}[1]
{
\noindent\begin{minipage}[t]{\textwidth}
\noindent\declarecvsection{#1} \\
}
{
\end{minipage}
}

\def\skillscolumnwidth{0.48\textwidth}

\newcommand\skills[2]
{
\declarecvsection{Skills}

\noindent
\begin{minipage}[t]{\skillscolumnwidth}
	\begin{itemize}
		#1
	\end{itemize}
\end{minipage}
\hfill
\begin{minipage}[t]{\skillscolumnwidth}
	\begin{itemize}
		#2
	\end{itemize}
\end{minipage}
\bigskip
}

\renewcommand*{\maketitle}{\cvheader}
