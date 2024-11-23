module kzmz::aoc;

import std::io;
import std::io::file;
import std::io::path;

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