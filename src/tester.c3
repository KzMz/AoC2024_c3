module kzmz::aoc::tester(<TestData>);

def TestFunction = fn TestData(String input);

fn void! test(TestFunction func, String input, TestData expected)
{
	TestData result = func(input);
	assert(result == expected, "Test failed!");
}