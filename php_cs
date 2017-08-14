<?php

$header = <<<'EOF'
@author     Creative Themes
@copyright  2017 Creative Themes
@license    http://www.gnu.org/copyleft/gpl.html GNU General Public License
@link       https://creativethemes.com/
EOF;

return PhpCsFixer\Config::create()
	->setCacheFile('/tmp/.php_cs.cache')
	->setRiskyAllowed(true)
	->setIndent("\t")
	->setRules([
		'@PHP56Migration' => true,
		'@Symfony' => true,
		'@Symfony:risky' => true,
		'align_multiline_comment' => true,
		'blank_line_before_statement' => true,
		'combine_consecutive_unsets' => true,
		// one should use PHPUnit methods to set up expected exception instead of annotations
		'general_phpdoc_annotation_remove' => ['expectedException', 'expectedExceptionMessage', 'expectedExceptionMessageRegExp'],
		/*
		'header_comment' => [
			'commentType' => 'PHPDoc',
			'header' => $header,
		],
		 */
		// 'heredoc_to_nowdoc' => true,
		'list_syntax' => ['syntax' => 'long'],
		'method_argument_space' => ['ensure_fully_multiline' => true],
		'no_extra_consecutive_blank_lines' => ['break', 'continue', 'extra', 'return', 'throw', 'use', 'parenthesis_brace_block', 'square_brace_block', 'curly_brace_block'],
		'concat_space' => array(
			'spacing' => 'one'
		),
		'braces' => array(
			'position_after_control_structures' => 'same',
			'position_after_functions_and_oop_constructs' => 'same',
		),
		'no_null_property_initialization' => true,
		'no_short_echo_tag' => true,
		'no_unreachable_default_argument_value' => true,
		'no_useless_else' => true,
		'no_useless_return' => true,
		'ordered_class_elements' => true,
		'ordered_imports' => true,
		'php_unit_strict' => true,
		'php_unit_test_class_requires_covers' => true,
		'phpdoc_add_missing_param_annotation' => true,
		'phpdoc_order' => true,
		'phpdoc_types_order' => true,
		'semicolon_after_instruction' => true,
		'single_line_comment_style' => true,
		'strict_comparison' => true,
		'strict_param' => true,
	])

	->setFinder(
		PhpCsFixer\Finder::create()
			->exclude('tests/Fixtures')
			->in(__DIR__)
	)
;
