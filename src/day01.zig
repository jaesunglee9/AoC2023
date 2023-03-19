const std = @import("std");

pub fn main() !void {
    const f = @embedFile("day01.txt");
    var lines = std.mem.split(u8, f, "\n");
    var current: u32 = 0;
    var max: u32 = 0;
    while (lines.next()) |line| {
        if (line.len == 0) {
	    current = 0;
	} else {
	    const n = try std.fmt.parseInt(u32, line, 10);
	    current += n;
	    if (current > max) {
	        max = current;
	    }
	}
    }
    std.debug.print("{d}", .{max});
}
