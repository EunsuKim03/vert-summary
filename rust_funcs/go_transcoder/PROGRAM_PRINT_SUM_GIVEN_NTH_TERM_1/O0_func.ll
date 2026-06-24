define i32 @f_gold(i32 %n) unnamed_addr #4 {
start:
; call core::num::<impl i32>::pow
  %_0 = call i32 @"_ZN4core3num21_$LT$impl$u20$i32$GT$3pow17h65bfa91e1ec3d092E"(i32 %n, i32 2) #22
  ret i32 %_0
}
