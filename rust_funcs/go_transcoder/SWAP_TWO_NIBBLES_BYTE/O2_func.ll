define noundef range(i32 0, 256) i32 @f_gold(i32 noundef %x) unnamed_addr #4 {
start:
  %x1 = trunc i32 %x to i8
  %x2 = tail call i8 @llvm.fshl.i8(i8 %x1, i8 %x1, i8 4)
  %_0 = zext i8 %x2 to i32
  ret i32 %_0
}
