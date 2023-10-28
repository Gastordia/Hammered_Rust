" Hammered_rust.vim

if exists("b:current_syntax")
  finish
endif

syntax clear

" Rust keywords
syn match rustKeyword /\v\<(async|await|box|break|const|continue|crate|do|dyn|else|enum|extern|false|fn|for|if|impl|in|let|loop|match|mod|move|mut|priv|pub|ref|return|self|Self|static|struct|super|trait|true|type|union|unsafe|use|where|while)\>/ contained

" Rust types
syn match rustType /\v\<(bool|char|f32|f64|i8|i16|i32|i64|i128|isize|str|u8|u16|u32|u64|u128|usize)\>/ contained

" Rust attributes
syn match rustAttribute /\v\<(allow\(dead_code\)|allow\(unused\)|cfg|derive\(no_std\)|inline|link_name\(none\)|link_name\(never\)|must_use|no_main|non_exhaustive|path\(repr\)|repr\(transparent\))\>/ contained

" Rust predefined functions
syn match rustFunction /\v\<(assert!|assert_eq!|assert_ne!|cfg!|column!|concat!|concat_idents!|debug_assert!|debug_assert_eq!|debug_assert_ne!|env!|eprint!|eprintln!|file!|format!|include!|include_bytes!|include_str!|line!|module_path!|option_env!|panic!|print!|println!|std::dbg!|stringify!|thread_local!|unimplemented!|unreachable!|vec!)\>/ contained

" Rust constants
syn match rustConstant /\v\<(Some|None|Ok|Err|Result)\>/ contained

" Rust macros
syn match rustMacro /\v\<(assert|debug_assert|include)\>/ contained

" Rust special variables
syn match rustSpecial /\v\<(self|Self)\>/ contained

" Rust standard library modules
syn match rustModule /\v\<(alloc|alloc|error|std|std\.any|std\.arch|std\.ascii|std\.borrow|std\.boxed|std\.cell|std\.char|std\.cmp|std\.collections|std\.convert|std\.default|std\.ffi|std\.fmt|std\.fs|std\.future|std\.hash|std\.io|std\.iter|std\.marker|std\.mem|std\.net|std\.num|std\.ops|std\.option|std\.os|std\.path|std\.pin|std\.prelude|std\.process|std\.ptr|std\.result|std\.slice|std\.str|std\.string|std\.sync|std\.thread|std\.time|std\.vec|std\.vec_deque|std\.vec_map|std\.vec_set|std\.version|std\.sync)\>/ contained

" Rust comments
syn region rustComment start="/\*" end="\*/" contains=rustTodo
syn match rustComment "//.*$" contains=rustTodo
syn match rustComment "/\*.\{-}\*/" contains=rustTodo

" Rust todos
syn match rustTodo /\v<TODO(\s+.+)?/> contained

" Define custom highlighting groups
hi def link rustKeyword Keyword
hi def link rustType Type
hi def link rustAttribute SpecialComment
hi def link rustFunction Function
hi def link rustConstant Constant
hi def link rustMacro Define
hi def link rustSpecial Special
hi def link rustModule Include

" Set the current syntax to Rust
let b:current_syntax = "rust"
