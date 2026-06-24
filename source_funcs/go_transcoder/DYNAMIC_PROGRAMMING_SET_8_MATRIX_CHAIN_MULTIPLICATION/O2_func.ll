define i64 @f_gold(ptr nocapture readonly %p.data, i64 %p.len, i64 %p.cap, i64 %i, i64 %j) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %p.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %p.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %p.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3041)
    #dbg_value(i64 %j, !3036, !DIExpression(), !3042)
  %0 = icmp eq i64 %i, %j, !dbg !3043
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3044

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %i, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %j, !3036, !DIExpression(), !3046)
  %1 = icmp slt i64 %i, %j, !dbg !3047
  br i1 %1, label %for.body.lr.ph, label %common.ret, !dbg !3044

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %2 = add i64 %i, -1
  %.not = icmp ult i64 %2, %p.len
  %.not5 = icmp ult i64 %j, %p.len
  %3 = getelementptr inbounds i64, ptr %p.data, i64 %2
  %4 = getelementptr inbounds i64, ptr %p.data, i64 %j
  %umax = call i64 @llvm.umax.i64(i64 %i, i64 %p.len), !dbg !3044
  br label %for.body, !dbg !3044

common.ret:                                       ; preds = %lookup.next10, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ 9223372036854775807, %for.loop.preheader ], [ %spec.select, %lookup.next10 ]
  ret i64 %common.ret.op, !dbg !3044

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next10
  %5 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %spec.select, %lookup.next10 ]
  %6 = phi i64 [ %i, %for.body.lr.ph ], [ %8, %lookup.next10 ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3049)
    #dbg_value(i64 %6, !3037, !DIExpression(), !3050)
  %7 = tail call i64 @f_gold(ptr %p.data, i64 %p.len, i64 %p.cap, i64 %i, i64 %6), !dbg !3051
  %8 = add i64 %6, 1, !dbg !3052
    #dbg_value(i64 %j, !3036, !DIExpression(), !3053)
  %9 = tail call i64 @f_gold(ptr %p.data, i64 %p.len, i64 %p.cap, i64 %8, i64 %j), !dbg !3054
  %10 = add i64 %9, %7, !dbg !3055
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3056

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3057)
    #dbg_value(i64 %6, !3037, !DIExpression(), !3058)
  %exitcond.not = icmp eq i64 %6, %umax, !dbg !3059
  br i1 %exitcond.not, label %lookup.throw5, label %lookup.next6, !dbg !3059

lookup.next6:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %j, !3036, !DIExpression(), !3061)
  br i1 %.not5, label %lookup.next10, label %lookup.throw9, !dbg !3062

lookup.next10:                                    ; preds = %lookup.next6
  %11 = load i64, ptr %3, align 8, !dbg !3056
  %12 = getelementptr inbounds i64, ptr %p.data, i64 %6, !dbg !3059
  %13 = load i64, ptr %12, align 8, !dbg !3059
  %14 = mul i64 %13, %11, !dbg !3063
  %15 = load i64, ptr %4, align 8, !dbg !3062
  %16 = mul i64 %14, %15, !dbg !3064
  %17 = add i64 %10, %16, !dbg !3065
    #dbg_value(i64 %17, !3039, !DIExpression(), !3066)
    #dbg_value(i64 %5, !3038, !DIExpression(), !3067)
  %spec.select = tail call i64 @llvm.smin.i64(i64 %17, i64 %5), !dbg !3044
    #dbg_value(i64 %8, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %j, !3036, !DIExpression(), !3046)
  %exitcond13.not = icmp eq i64 %8, %j, !dbg !3047
  br i1 %exitcond13.not, label %common.ret, label %for.body, !dbg !3044

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056

lookup.throw5:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3059
  unreachable, !dbg !3059

lookup.throw9:                                    ; preds = %lookup.next6
  tail call fastcc void @runtime.lookupPanic(), !dbg !3062
  unreachable, !dbg !3062
}
