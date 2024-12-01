module kzmz::aoc::y24;

import std::io;
import std::collections::list;
import std::time;

import kzmz::aoc::tester;

fn void! main()
{
	io::printfn("Hello, Advent of Code 2024!");


	List(<String>) lines;
	lines.temp_init();

	aoc::load_asset_lines("1.txt", &lines)!;
	long result = y24::day1_distance(lines);

	Clock c = clock::now();

	result = y24::day1_similarity(lines);
	io::printfn("Passed %s", c.mark());

	result = y24::day1_similarity2(lines);
	io::printfn("Passed %s", c.mark());

	//tester::test(<long>)(&y24::day1, lines, 11)!;

	return;
}