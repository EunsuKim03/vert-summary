define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #6 {
start:
  %sum = add i32 %b, %a
  %result = sdiv i32 %sum, 2
  ret i32 %result
}
