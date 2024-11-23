module kzmz::aoc::y24;

import std::io;
import kzmz::aoc::tester;

fn String day0(String input)
{
	return "day0";
}

fn void! main()
{
	io::printfn("Hello, Advent of Code 2024!");

	char[] test_input = aoc::load_asset("test.txt")!;

	tester::test(<String>)(&day0, (String) test_input, "day0")!;

	return;
}