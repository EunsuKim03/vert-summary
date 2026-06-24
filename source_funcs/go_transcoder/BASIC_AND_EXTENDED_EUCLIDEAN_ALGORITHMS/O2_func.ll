define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %b, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
  %0 = icmp eq i64 %a, 0, !dbg !3030
  br i1 %0, label %common.ret, label %divbyzero.next, !dbg !3031

common.ret:                                       ; preds = %divbyzero.next, %entry
  %b.tr.lcssa = phi i64 [ %b, %entry ], [ %a.tr1, %divbyzero.next ]
  ret i64 %b.tr.lcssa, !dbg !3031

divbyzero.next:                                   ; preds = %entry, %divbyzero.next
  %b.tr2 = phi i64 [ %a.tr1, %divbyzero.next ], [ %b, %entry ]
  %a.tr1 = phi i64 [ %5, %divbyzero.next ], [ %a, %entry ]
    #dbg_value(i64 %b.tr2, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %a.tr1, !3026, !DIExpression(), !3033)
  %1 = icmp eq i64 %a.tr1, -1, !dbg !3034
  %2 = icmp eq i64 %b.tr2, -9223372036854775808, !dbg !3034
  %3 = and i1 %1, %2, !dbg !3034
  %4 = select i1 %3, i64 1, i64 %a.tr1, !dbg !3034
  %5 = srem i64 %b.tr2, %4, !dbg !3034
    #dbg_value(i64 %a.tr1, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %5, !3026, !DIExpression(), !3029)
  %6 = icmp eq i64 %5, 0, !dbg !3030
  br i1 %6, label %common.ret, label %divbyzero.next, !dbg !3031
}
