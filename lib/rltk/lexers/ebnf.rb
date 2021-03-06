# Author:		Chris Wailes <chris.wailes@gmail.com>
# Project: 	Ruby Language Toolkit
# Date:		2011/01/20
# Description:	This file contains a lexer for Extended Backus–Naur Form.

############
# Requires #
############

# Ruby Language Toolkit
require 'rltk/lexer'

#######################
# Classes and Modules #
#######################

module RLTK # :nodoc:
	
	# The RLTK::Lexers module contains the lexers that are included as part of
	# the RLKT project.
	module Lexers
		
		# The EBNF lexer is used by the RLTK::CFG class.
		class EBNF < Lexer
			
			#################
			# Default State #
			#################
			
			rule(/\*/)	{ :*   }
			rule(/\+/)	{ :+   }
			rule(/\?/)	{ :'?' }
			
			rule(/[a-z0-9_]+/)	{ |t| [:NONTERM, t.to_sym] }
			rule(/[A-Z0-9_]+/)	{ |t| [:TERM,    t.to_sym] }
			
			rule(/\s/)
		end
	end
end
