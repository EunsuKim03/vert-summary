define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1, i32 noundef %n) unnamed_addr #6 {
start:
  %_5 = sext i32 %n to i64
  %_4.not = icmp uge i64 %str.1, %_5
  %. = zext i1 %_4.not to i32
  ret i32 %.
}
