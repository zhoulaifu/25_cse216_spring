import re
from enum import Enum, auto

# Define the token types
class TokenType(Enum):
    KEYWORD = auto()
    IDENTIFIER = auto()
    OPERATOR = auto()
    DELIMITER = auto()
    LITERAL = auto()
    COMMENT = auto()
    EOF = auto()  # End of file

# Define the Token class
class Token:
    def __init__(self, type, value):
        self.type = type
        self.value = value

    def __repr__(self):
        return f"Token({self.type.name}, {self.value})"

# Define regular expressions for each token type
token_specification = [
    ('COMMENT',    r'tofill'),  # Single-line comments
    ('KEYWORD',    r'tofill'),  # Keywords
    ('IDENTIFIER', r'tofill'),  # Identifiers
    ('LITERAL',    r'tofill'),  # Integer and string literals
    ('OPERATOR',   r'tofill'),  # Operators
    ('DELIMITER',  r'tofill'),  # Delimiters
    ('WHITESPACE', r'\s+'),  # Whitespace (ignored)
    ('MISMATCH',   r'.'),  # Any other character
]

# Compile the regular expressions into a single pattern
token_regex = re.compile('|'.join(f'(?P<{name}>{pattern})' for name, pattern in token_specification))

# Implement the lexer function
def tokenize(code):
    tokens = []
    line_num = 1
    line_start = 0
    for mo in token_regex.finditer(code):
        kind = mo.lastgroup
        value = mo.group(kind)
        column = mo.start() - line_start
        if kind == 'WHITESPACE':
            pass  # Skip whitespace
        elif kind == 'MISMATCH':
            raise RuntimeError(f'Unexpected character {value!r} on line {line_num}')
        else:
            token_type = TokenType[kind]
            tokens.append(Token(token_type, value))
        # Update line number and start position
        line_breaks = value.count('\n')
        if line_breaks:
            line_num += line_breaks
            line_start = mo.end()
    tokens.append(Token(TokenType.EOF, ''))
    return tokens

# Example usage
if __name__ == "__main__":
    code = '''
    if (x == 10) {
        y = x + 5;
        // Increment y
        y = y + 1;
        return y;
    } else {
        return -1;
    }
    '''
    tokens = tokenize(code)
    for token in tokens:
        print(token)