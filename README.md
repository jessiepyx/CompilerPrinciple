# CompilerPrinciple
Zhejiang University Course: Compiler Principle (19 Spring)
## Environment
- Ubuntu 16.04 (Linux 4.10)
- GCC 5.4.0
- Lex/Flex 2.6.0
- Yacc/Bison 3.0.4
## LexicalProject\_count
Lexical analysis with **Lex/Flex**.
- Count the number of characters, words and lines in a text file.
- Words are defined as sequences of letters and/or digits without punctuation.
- Puctuations and blanks are not considered as words.
## LexicalProject\_keywords
Lexical analysis with **Lex/Flex**.
- Recognize any SPL keywords in a text file and capitalize all their letters.
- SPL stands for Simplified Pascal Language, a subset of Pascal.
- Comments are excluded from analysis.
## ParsingProject
Syntax analysis with **Yacc/Bison**.
- Implement an integer and floating point calculator according to the following grammar:

		exp -> exp + exp | exp - exp | exp * exp | exp / exp | exp ^ exp | -exp | (exp) | NUM

- Exponentiation (^) has higher priority than minus sign (-)
- Exponentiation is right-associative, while other operations are left-associative
