module kzmz::aoc;

import std::io;
import std::io::file;
import std::io::path;
import std::collections::list;

const String ASSET_FOLDER = "assets";

fn char[]! load_asset(String asset_name)
{
	Path path = path::temp_new(ASSET_FOLDER)!;
	path = path.new_append(asset_name)!;

	usz size = io::file::get_size(path.path_string)!;
	char[] buffer = ((char*) mem::tmalloc(size))[0..size];
	buffer = io::file::load_buffer(path.path_string, buffer)!;

	return buffer;
}

fn void! load_asset_lines(String asset_name, List(<String>)* list)
{
	Path path = path::temp_new(ASSET_FOLDER)!;
	path = path.new_append(asset_name)!;

	File f = io::file::open(path.path_string, "r")!;
	defer f.close()!!;

	String[] lines;

	while (try line = io::treadline(&f)) list.push(line);
}