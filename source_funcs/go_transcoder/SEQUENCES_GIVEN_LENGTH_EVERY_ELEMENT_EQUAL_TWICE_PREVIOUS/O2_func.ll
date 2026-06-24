define i64 @f_gold(i64 %m, i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %m, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %m, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %n, !3027, !DIExpression(), !3030)
  %0 = icmp slt i64 %m, %n, !dbg !3031
  br i1 %0, label %common.ret, label %if.done, !dbg !3032

common.ret.loopexit:                              ; preds = %if.done, %if.done2
  %accumulator.tr.lcssa.ph = phi i64 [ %7, %if.done2 ], [ %accumulator.tr1, %if.done ]
  %common.ret.op.ph = phi i64 [ 0, %if.done2 ], [ 1, %if.done ]
  %1 = add i64 %common.ret.op.ph, %accumulator.tr.lcssa.ph
  br label %common.ret

common.ret:                                       ; preds = %common.ret.loopexit, %entry
  %accumulator.ret.tr = phi i64 [ 0, %entry ], [ %1, %common.ret.loopexit ]
  ret i64 %accumulator.ret.tr, !dbg !3032

if.done:                                          ; preds = %entry, %if.done2
  %n.tr3 = phi i64 [ %6, %if.done2 ], [ %n, %entry ]
  %m.tr2 = phi i64 [ %5, %if.done2 ], [ %m, %entry ]
  %accumulator.tr1 = phi i64 [ %7, %if.done2 ], [ 0, %entry ]
    #dbg_value(i64 %n.tr3, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %m.tr2, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %n.tr3, !3027, !DIExpression(), !3033)
  %2 = icmp eq i64 %n.tr3, 0, !dbg !3034
  br i1 %2, label %common.ret.loopexit, label %if.done2, !dbg !3032

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %m.tr2, !3026, !DIExpression(), !3035)
  %3 = add i64 %m.tr2, -1, !dbg !3036
    #dbg_value(i64 %n.tr3, !3027, !DIExpression(), !3037)
  %4 = tail call i64 @f_gold(i64 %3, i64 %n.tr3), !dbg !3038
  %5 = sdiv i64 %m.tr2, 2, !dbg !3039
  %6 = add i64 %n.tr3, -1, !dbg !3040
  %7 = add i64 %4, %accumulator.tr1, !dbg !3041
    #dbg_value(i64 %5, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %6, !3027, !DIExpression(), !3030)
  %8 = icmp slt i64 %5, %6, !dbg !3031
  br i1 %8, label %common.ret.loopexit, label %if.done, !dbg !3032
}
