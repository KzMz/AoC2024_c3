module kzmz::aoc::y24;

import std::io;
import std::collections::list;
import std::collections::map;
import std::math;
import std::sort;

fn long day1_distance(List(<String>) lines)
{
	io::printn("Starting day1_distance...");

	List(<ulong>) first_col;
	first_col.temp_init(lines.len());

	List(<ulong>) second_col;
	second_col.temp_init(lines.len());

	foreach (line : lines)
	{
		String[] parts = line.tsplit("   ");
		assert(parts.len == 2);

		first_col.push(parts[0].to_long()!!);
		second_col.push(parts[1].to_long()!!);
	}

	sort::quicksort(first_col);
	sort::quicksort(second_col);

	long result = 0;
	for (usz i = 0; i < first_col.len(); i++)
	{
		long diff = math::abs(first_col[i] - second_col[i]);
		result += diff;
	}

	io::printfn("Result: %d", result);
	return result;
}

fn long day1_similarity(List(<String>) lines)
{
	io::printn("Starting day1_similarity...");

	List(<ulong>) first_col;
	first_col.temp_init(lines.len());

	List(<ulong>) second_col;
	second_col.temp_init(lines.len());

	foreach (line : lines)
	{
		String[] parts = line.tsplit("   ");
		assert(parts.len == 2);

		first_col.push(parts[0].to_long()!!);
		second_col.push(parts[1].to_long()!!);
	}

	long result = 0;
	for (usz i = 0; i < first_col.len(); i++)
	{
		long first = first_col[i];
		uint score = 0;

		for (usz j = 0; j < second_col.len(); j++)
		{
			long second = second_col[j];
			if (first == second) score++;
		}

		result += first * score;
	}

	io::printfn("Result: %d", result);
	return result;
}

fn long day1_similarity2(List(<String>) lines)
{
	io::printn("Starting day1_similarity2...");

	List(<ulong>) first_col;
	first_col.temp_init(lines.len());

	HashMap(<ulong, uint>) similarity;

	foreach (line : lines)
	{
		String[] parts = line.tsplit("   ");
		assert(parts.len == 2);

		long first = parts[0].to_long()!!;
		first_col.push(first);

		long second = parts[1].to_long()!!;
		
		uint score = similarity[second] ?? 0;
		similarity[second] = score + 1;
	}

	long result = 0;
	for (usz i = 0; i < first_col.len(); i++)
	{
		long first = first_col[i];
		result += first * similarity[first] ?? 0;
	}

	io::printfn("Result: %d", result);
	return result;
}