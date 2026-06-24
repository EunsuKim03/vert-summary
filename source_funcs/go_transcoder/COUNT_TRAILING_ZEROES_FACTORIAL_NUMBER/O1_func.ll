define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 5, !3112, !DIExpression(), !3115)
  %0 = icmp eq i64 %n, -9223372036854775808
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
    #dbg_value(i64 5, !3112, !DIExpression(), !3117)
  %1 = icmp sgt i64 %n, 4, !dbg !3118
  br i1 %1, label %divbyzero.next2.preheader, label %for.done, !dbg !3119

divbyzero.next2.preheader:                        ; preds = %entry
  %2 = udiv i64 %n, 5, !dbg !3120
  br label %divbyzero.next2, !dbg !3119

divbyzero.next2:                                  ; preds = %divbyzero.next2.preheader, %divbyzero.next2
  %3 = phi i64 [ %11, %divbyzero.next2 ], [ %2, %divbyzero.next2.preheader ]
  %4 = phi i64 [ %7, %divbyzero.next2 ], [ 5, %divbyzero.next2.preheader ]
  %5 = phi i64 [ %6, %divbyzero.next2 ], [ 0, %divbyzero.next2.preheader ]
    #dbg_value(i64 %n, !3110, !DIExpression(), !3121)
    #dbg_value(i64 %4, !3112, !DIExpression(), !3122)
  %6 = add i64 %3, %5, !dbg !3123
    #dbg_value(i64 %6, !3111, !DIExpression(), !3123)
  %7 = mul i64 %4, 5, !dbg !3124
    #dbg_value(i64 %7, !3112, !DIExpression(), !3117)
  %8 = icmp eq i64 %4, 3689348814741910323, !dbg !3120
  %9 = and i1 %0, %8, !dbg !3120
  %10 = select i1 %9, i64 1, i64 %7, !dbg !3120
  %11 = sdiv i64 %n, %10, !dbg !3120
  %12 = icmp sgt i64 %11, 0, !dbg !3118
  br i1 %12, label %divbyzero.next2, label %for.done, !dbg !3119

for.done:                                         ; preds = %divbyzero.next2, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %divbyzero.next2 ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3125)
  ret i64 %.lcssa, !dbg !3126
}
