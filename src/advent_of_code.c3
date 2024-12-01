module kzmz::aoc::y24;

import std::io;
import std::collections::list;
import kzmz::aoc::tester;

fn void! main()
{
	io::printfn("Hello, Advent of Code 2024!");


	List(<String>) lines;
	lines.temp_init();

	aoc::load_asset_lines("1.txt", &lines)!;
	long result = y24::day1_distance(lines);
	result = y24::day1_similarity(lines);

	//tester::test(<long>)(&y24::day1, lines, 11)!;

	return;
}