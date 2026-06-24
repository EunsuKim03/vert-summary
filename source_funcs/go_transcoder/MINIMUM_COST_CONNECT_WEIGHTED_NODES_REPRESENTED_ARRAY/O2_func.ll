define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 9223372036854775807, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3044

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3045
  %.not.not = icmp ugt i64 %a.len, %1, !dbg !3045
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3045

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %8, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %x.y.i, %for.body ], [ 9223372036854775807, %for.body.preheader ]
    #dbg_value(i64 poison, !3036, !DIExpression(), !3046)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3048)
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3045
  %6 = load i64, ptr %5, align 8, !dbg !3045
    #dbg_value(i64 %6, !3049, !DIExpression(), !3055)
    #dbg_value(i64 %4, !3054, !DIExpression(), !3057)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %6, i64 %4), !dbg !3058
    #dbg_value(i64 %x.y.i, !3036, !DIExpression(), !3046)
  %7 = add i64 %6, %3, !dbg !3059
    #dbg_value(i64 %7, !3037, !DIExpression(), !3059)
  %8 = add nuw nsw i64 %2, 1, !dbg !3060
    #dbg_value(i64 %8, !3038, !DIExpression(), !3061)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3062)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3043
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3044

for.done:                                         ; preds = %for.body, %entry
  %.lcssa2 = phi i64 [ 9223372036854775807, %entry ], [ %x.y.i, %for.body ], !dbg !3040
  %.lcssa = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3063)
    #dbg_value(i64 %.lcssa2, !3036, !DIExpression(), !3064)
  %9 = sub i64 %.lcssa, %.lcssa2, !dbg !3065
  %10 = mul i64 %9, %.lcssa2, !dbg !3066
  ret i64 %10, !dbg !3067

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3045
  unreachable, !dbg !3045
}
