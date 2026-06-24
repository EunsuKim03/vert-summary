define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
    #dbg_value(i64 0, !3038, !DIExpression(), !3043)
  %0 = icmp sgt i64 %n, 0, !dbg !3044
  br i1 %0, label %for.body.preheader, label %common.ret, !dbg !3045

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3046
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3046
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3046

for.loop1.preheader:                              ; preds = %for.body
    #dbg_value(i64 0, !3039, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3048)
  br label %for.body2, !dbg !3045

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %6, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3050)
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3046
  %5 = load i64, ptr %4, align 8, !dbg !3046
  %6 = add i64 %5, %3, !dbg !3051
    #dbg_value(i64 %6, !3036, !DIExpression(), !3051)
  %7 = add nuw nsw i64 %2, 1, !dbg !3052
    #dbg_value(i64 %7, !3038, !DIExpression(), !3053)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3054)
  %exitcond.not = icmp eq i64 %7, %n, !dbg !3044
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3045

for.body2:                                        ; preds = %for.loop1.preheader, %lookup.next11
  %8 = phi i64 [ %16, %lookup.next11 ], [ 0, %for.loop1.preheader ]
  %9 = phi i64 [ %15, %lookup.next11 ], [ 0, %for.loop1.preheader ]
  %10 = phi i64 [ %13, %lookup.next11 ], [ %6, %for.loop1.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %8, !3039, !DIExpression(), !3056)
  %exitcond16.not = icmp eq i64 %8, %arr.len, !dbg !3057
  br i1 %exitcond16.not, label %lookup.throw6, label %lookup.next7, !dbg !3057

lookup.next7:                                     ; preds = %for.body2
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !3057
  %12 = load i64, ptr %11, align 8, !dbg !3057
  %13 = sub i64 %10, %12, !dbg !3058
    #dbg_value(i64 %9, !3037, !DIExpression(), !3059)
    #dbg_value(i64 %13, !3036, !DIExpression(), !3060)
  %14 = icmp eq i64 %9, %13, !dbg !3061
  br i1 %14, label %common.ret, label %lookup.next11, !dbg !3045

common.ret:                                       ; preds = %lookup.next7, %lookup.next11, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %lookup.next11 ], [ %8, %lookup.next7 ]
  ret i64 %common.ret.op, !dbg !3045

lookup.next11:                                    ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3062)
    #dbg_value(i64 %8, !3039, !DIExpression(), !3063)
  %15 = add i64 %12, %9, !dbg !3064
    #dbg_value(i64 %15, !3037, !DIExpression(), !3064)
  %16 = add nuw nsw i64 %8, 1, !dbg !3065
    #dbg_value(i64 %16, !3039, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3048)
  %exitcond17.not = icmp eq i64 %16, %n, !dbg !3066
  br i1 %exitcond17.not, label %common.ret, label %for.body2, !dbg !3045

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw6:                                    ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057
}
