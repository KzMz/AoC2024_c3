module kzmz::aoc::tester(<TestData>);

import std::io;
import std::collections::list;

def TestFunction = fn TestData(List(<String>) input);

fn void! test(TestFunction func, List(<String>) input, TestData expected)
{
	TestData result = func(input);
	assert(result == expected, "Test failed!");

	io::printfn("Test for function passed!");
}