# Lua Pairs Iterator Unexpected Behavior with Nested Tables

This repository demonstrates a potential issue with Lua's `pairs` iterator when working with deeply nested tables.  The issue arises when the nested tables have certain characteristics or structures. The provided code shows an example scenario and a potential solution using a recursive function to handle nested tables properly.  This issue is particularly relevant when dealing with complex data structures where the structure isn't perfectly predictable.