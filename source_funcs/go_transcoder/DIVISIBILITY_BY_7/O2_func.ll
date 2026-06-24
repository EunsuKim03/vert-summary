define range(i64 0, 2) i64 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3021 {
entry:
  %num.fr1 = freeze i64 %num
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %num.tr = phi i64 [ %num.fr1, %entry ], [ %num.tr.be, %tailrecurse.backedge ]
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3028)
  %0 = icmp slt i64 %num.tr, 0, !dbg !3029
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3031)
  br i1 %0, label %if.then, label %if.done, !dbg !3032

common.ret:                                       ; preds = %if.done2, %if.done, %if.done
  %common.ret.op = phi i64 [ 1, %if.done ], [ 1, %if.done ], [ 0, %if.done2 ]
  ret i64 %common.ret.op, !dbg !3032

if.then:                                          ; preds = %tailrecurse
  %1 = sub i64 0, %num.tr, !dbg !3033
  br label %tailrecurse.backedge, !dbg !3034

tailrecurse.backedge:                             ; preds = %if.then, %if.done4
  %num.tr.be = phi i64 [ %1, %if.then ], [ %6, %if.done4 ]
  br label %tailrecurse, !dbg !3035

if.done:                                          ; preds = %tailrecurse
  switch i64 %num.tr, label %if.done2 [
    i64 0, label %common.ret
    i64 7, label %common.ret
  ], !dbg !3032

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3036)
  %2 = icmp samesign ult i64 %num.tr, 10, !dbg !3037
  br i1 %2, label %common.ret, label %if.done4, !dbg !3032

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3038)
  %3 = udiv i64 %num.tr, 10, !dbg !3039
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3040)
    #dbg_value(i64 %num.tr, !3026, !DIExpression(), !3041)
  %4 = urem i64 %num.tr, 10, !dbg !3035
  %5 = shl nuw nsw i64 %4, 1, !dbg !3042
  %6 = sub nsw i64 %3, %5, !dbg !3043
  br label %tailrecurse.backedge, !dbg !3044
}
