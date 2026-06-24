define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i8 %c) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %s.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %s.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %s.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i8 %c, !3035, !DIExpression(), !3039)
    #dbg_value(i1 false, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3043)
  %0 = icmp slt i64 %s.len, 1, !dbg !3044
  br i1 %0, label %common.ret, label %lookup.next, !dbg !3045

lookup.next:                                      ; preds = %entry, %if.else
  %1 = phi i64 [ %17, %if.else ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3047)
  %2 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3048
  %3 = load i8, ptr %2, align 1, !dbg !3048
    #dbg_value(i8 %c, !3035, !DIExpression(), !3049)
  %4 = icmp eq i8 %3, %c, !dbg !3050
  br i1 %4, label %if.then, label %if.else, !dbg !3045

if.then:                                          ; preds = %lookup.next
    #dbg_value(i1 false, !3036, !DIExpression(), !3051)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3052)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3053)
  %5 = icmp slt i64 %1, %s.len, !dbg !3054
  br i1 %5, label %cond.true, label %for.done, !dbg !3045

common.ret:                                       ; preds = %if.else, %for.body3, %lookup.next.1, %if.else.1, %for.done, %entry
  %6 = phi i1 [ true, %entry ], [ true, %for.done ], [ false, %lookup.next.1 ], [ true, %if.else.1 ], [ true, %for.body3 ], [ true, %if.else ]
  ret i1 %6, !dbg !3045

cond.true:                                        ; preds = %if.then, %for.body3
  %7 = phi i64 [ %11, %for.body3 ], [ %1, %if.then ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %7, !3037, !DIExpression(), !3056)
  %.not2 = icmp ult i64 %7, %s.len, !dbg !3057
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3057

lookup.next8:                                     ; preds = %cond.true
  %8 = getelementptr inbounds i8, ptr %s.data, i64 %7, !dbg !3057
  %9 = load i8, ptr %8, align 1, !dbg !3057
    #dbg_value(i8 %c, !3035, !DIExpression(), !3058)
  %10 = icmp eq i8 %9, %c, !dbg !3059
  br i1 %10, label %for.body3, label %for.done, !dbg !3045

for.body3:                                        ; preds = %lookup.next8
  %11 = add nuw i64 %7, 1, !dbg !3060
    #dbg_value(i64 %11, !3037, !DIExpression(), !3052)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3053)
  %exitcond30.not = icmp eq i64 %11, %s.len, !dbg !3054
  br i1 %exitcond30.not, label %common.ret, label %cond.true, !dbg !3045

for.done:                                         ; preds = %lookup.next8, %if.then
  %.lcssa13 = phi i64 [ %1, %if.then ], [ %7, %lookup.next8 ], !dbg !3041
    #dbg_value(i1 true, !3036, !DIExpression(), !3061)
    #dbg_value(i64 %.lcssa13, !3037, !DIExpression(), !3062)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3063)
  %.not22.not = icmp slt i64 %.lcssa13, %s.len, !dbg !3044
  br i1 %.not22.not, label %for.body.lr.ph.1, label %common.ret, !dbg !3045

for.body.lr.ph.1:                                 ; preds = %for.done
    #dbg_value(i64 %.lcssa13, !3037, !DIExpression(), !3062)
  %umax.1 = call i64 @llvm.umax.i64(i64 %.lcssa13, i64 %s.len), !dbg !3045
  br label %for.body.1, !dbg !3045

for.body.1:                                       ; preds = %if.else.1, %for.body.lr.ph.1
  %12 = phi i64 [ %.lcssa13, %for.body.lr.ph.1 ], [ %16, %if.else.1 ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %12, !3037, !DIExpression(), !3047)
  %exitcond.1.not = icmp eq i64 %12, %umax.1, !dbg !3048
  br i1 %exitcond.1.not, label %lookup.throw, label %lookup.next.1, !dbg !3048

lookup.next.1:                                    ; preds = %for.body.1
  %13 = getelementptr inbounds i8, ptr %s.data, i64 %12, !dbg !3048
  %14 = load i8, ptr %13, align 1, !dbg !3048
    #dbg_value(i8 %c, !3035, !DIExpression(), !3049)
  %15 = icmp eq i8 %14, %c, !dbg !3050
  br i1 %15, label %common.ret, label %if.else.1, !dbg !3045

if.else.1:                                        ; preds = %lookup.next.1
  %16 = add nsw i64 %12, 1, !dbg !3064
    #dbg_value(i64 %16, !3037, !DIExpression(), !3062)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3063)
  %exitcond29.not = icmp eq i64 %16, %s.len, !dbg !3044
  br i1 %exitcond29.not, label %common.ret, label %for.body.1, !dbg !3045

if.else:                                          ; preds = %lookup.next
  %17 = add nuw nsw i64 %1, 1, !dbg !3064
    #dbg_value(i64 %17, !3037, !DIExpression(), !3062)
    #dbg_value(i64 %s.len, !3038, !DIExpression(), !3063)
  %exitcond31.not = icmp eq i64 %17, %s.len, !dbg !3044
  br i1 %exitcond31.not, label %common.ret, label %lookup.next, !dbg !3045

lookup.throw:                                     ; preds = %for.body.1
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw7:                                    ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057
}
