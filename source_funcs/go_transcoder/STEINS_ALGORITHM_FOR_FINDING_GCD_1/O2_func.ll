define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3029)
  %0 = icmp eq i64 %a, %b, !dbg !3030
  br i1 %0, label %common.ret2, label %if.done.lr.ph, !dbg !3031

if.done.lr.ph:                                    ; preds = %entry, %tailrecurse.outer.backedge
  %b.tr.ph11 = phi i64 [ %b.tr.ph.be, %tailrecurse.outer.backedge ], [ %b, %entry ]
  %a.tr.ph10 = phi i64 [ %a.tr.ph.be, %tailrecurse.outer.backedge ], [ %a, %entry ]
    #dbg_value(i64 %b.tr.ph11, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3032)
  %1 = icmp eq i64 %a.tr.ph10, 0
  %2 = and i64 %a.tr.ph10, 1
  %.not.not = icmp eq i64 %2, 0
  br label %if.done, !dbg !3031

common.ret2:                                      ; preds = %tailrecurse.outer.backedge, %if.done2, %if.done, %if.then8, %entry, %if.else
  %common.ret2.op = phi i64 [ %9, %if.else ], [ %a, %entry ], [ %a.tr.ph10, %if.done2 ], [ %b.tr.ph11, %if.done ], [ %a.tr.ph10, %if.then8 ], [ %b.tr.ph.be, %tailrecurse.outer.backedge ]
  ret i64 %common.ret2.op, !dbg !3031

if.done:                                          ; preds = %if.done.lr.ph, %if.then8
  %b.tr6 = phi i64 [ %b.tr.ph11, %if.done.lr.ph ], [ %11, %if.then8 ]
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3032)
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3033)
  br i1 %1, label %common.ret2, label %if.done2, !dbg !3031

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3034)
  %3 = icmp eq i64 %b.tr6, 0, !dbg !3035
  br i1 %3, label %common.ret2, label %if.done4, !dbg !3031

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3036)
  br i1 %.not.not, label %if.then5, label %if.done7, !dbg !3031

if.then5:                                         ; preds = %if.done4
    #dbg_value(i64 %b.tr.ph11, !3027, !DIExpression(), !3037)
  %4 = and i64 %b.tr.ph11, 1, !dbg !3038
  %.not = icmp eq i64 %4, 0, !dbg !3039
  br i1 %.not, label %if.else, label %tailrecurse.outer.backedge, !dbg !3031

tailrecurse.outer.backedge:                       ; preds = %if.then5, %if.then10, %if.done11
  %a.tr.ph.be.in = phi i64 [ %15, %if.done11 ], [ %14, %if.then10 ], [ %a.tr.ph10, %if.then5 ]
  %b.tr.ph.be = phi i64 [ %a.tr.ph10, %if.done11 ], [ %b.tr6, %if.then10 ], [ %b.tr.ph11, %if.then5 ]
  %a.tr.ph.be = ashr exact i64 %a.tr.ph.be.in, 1, !dbg !3031
    #dbg_value(i64 %a.tr.ph.be, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %b.tr.ph.be, !3027, !DIExpression(), !3029)
  %5 = icmp eq i64 %a.tr.ph.be, %b.tr.ph.be, !dbg !3030
  br i1 %5, label %common.ret2, label %if.done.lr.ph, !dbg !3031

if.else:                                          ; preds = %if.then5
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3040)
  %6 = ashr exact i64 %a.tr.ph10, 1, !dbg !3041
    #dbg_value(i64 %b.tr.ph11, !3027, !DIExpression(), !3042)
  %7 = ashr exact i64 %b.tr.ph11, 1, !dbg !3043
  %8 = tail call i64 @f_gold(i64 %6, i64 %7), !dbg !3044
  %9 = shl i64 %8, 1, !dbg !3045
  br label %common.ret2, !dbg !3031

if.done7:                                         ; preds = %if.done4
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3046)
  %10 = and i64 %b.tr6, 1, !dbg !3047
  %.not.not1 = icmp eq i64 %10, 0, !dbg !3048
  br i1 %.not.not1, label %if.then8, label %if.done9, !dbg !3031

if.then8:                                         ; preds = %if.done7
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3049)
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3050)
  %11 = ashr exact i64 %b.tr6, 1, !dbg !3051
    #dbg_value(i64 %11, !3027, !DIExpression(), !3029)
  %12 = icmp eq i64 %a.tr.ph10, %11, !dbg !3030
  br i1 %12, label %common.ret2, label %if.done, !dbg !3031

if.done9:                                         ; preds = %if.done7
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3052)
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3053)
  %13 = icmp sgt i64 %a.tr.ph10, %b.tr6, !dbg !3054
  br i1 %13, label %if.then10, label %if.done11, !dbg !3031

if.then10:                                        ; preds = %if.done9
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3055)
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3056)
  %14 = sub i64 %a.tr.ph10, %b.tr6, !dbg !3057
  br label %tailrecurse.outer.backedge, !dbg !3058

if.done11:                                        ; preds = %if.done9
    #dbg_value(i64 %b.tr6, !3027, !DIExpression(), !3059)
    #dbg_value(i64 %a.tr.ph10, !3026, !DIExpression(), !3060)
  %15 = sub i64 %b.tr6, %a.tr.ph10, !dbg !3061
  br label %tailrecurse.outer.backedge, !dbg !3062
}
