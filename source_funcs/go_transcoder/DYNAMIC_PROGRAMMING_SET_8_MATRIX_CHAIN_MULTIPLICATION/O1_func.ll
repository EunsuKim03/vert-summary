define i64 @f_gold(ptr nocapture readonly %p.data, i64 %p.len, i64 %p.cap, i64 %i, i64 %j) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %p.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %p.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %p.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %j, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %j, !3120, !DIExpression(), !3126)
  %0 = icmp eq i64 %i, %j, !dbg !3127
  br i1 %0, label %common.ret, label %for.loop.preheader, !dbg !3128

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %i, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %j, !3120, !DIExpression(), !3130)
  %1 = icmp slt i64 %i, %j, !dbg !3131
  br i1 %1, label %for.body.lr.ph, label %common.ret, !dbg !3128

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %2 = add i64 %i, -1
  %.not = icmp ult i64 %2, %p.len
  %.not5 = icmp ult i64 %j, %p.len
  %3 = getelementptr inbounds i64, ptr %p.data, i64 %2
  %4 = getelementptr inbounds i64, ptr %p.data, i64 %j
  %umax = call i64 @llvm.umax.i64(i64 %i, i64 %p.len), !dbg !3128
  br label %for.body, !dbg !3128

common.ret:                                       ; preds = %lookup.next10, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ 9223372036854775807, %for.loop.preheader ], [ %spec.select, %lookup.next10 ]
  ret i64 %common.ret.op, !dbg !3128

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next10
  %5 = phi i64 [ 9223372036854775807, %for.body.lr.ph ], [ %spec.select, %lookup.next10 ]
  %6 = phi i64 [ %i, %for.body.lr.ph ], [ %8, %lookup.next10 ]
    #dbg_value(i64 %6, !3121, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3133)
    #dbg_value(i64 %6, !3121, !DIExpression(), !3134)
  %7 = call i64 @f_gold(ptr %p.data, i64 %p.len, i64 %p.cap, i64 %i, i64 %6), !dbg !3135
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %6, !3121, !DIExpression(), !3137)
  %8 = add nsw i64 %6, 1, !dbg !3138
    #dbg_value(i64 %j, !3120, !DIExpression(), !3139)
  %9 = call i64 @f_gold(ptr %p.data, i64 %p.len, i64 %p.cap, i64 %8, i64 %j), !dbg !3140
  %10 = add i64 %9, %7, !dbg !3141
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 %i, !3119, !DIExpression(), !3143)
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3144

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3145)
    #dbg_value(i64 %6, !3121, !DIExpression(), !3146)
  %exitcond.not = icmp eq i64 %6, %umax, !dbg !3147
  br i1 %exitcond.not, label %lookup.throw5, label %lookup.next6, !dbg !3147

lookup.next6:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3148)
    #dbg_value(i64 %j, !3120, !DIExpression(), !3149)
  br i1 %.not5, label %lookup.next10, label %lookup.throw9, !dbg !3150

lookup.next10:                                    ; preds = %lookup.next6
  %11 = load i64, ptr %3, align 8, !dbg !3144
  %12 = getelementptr inbounds i64, ptr %p.data, i64 %6, !dbg !3147
  %13 = load i64, ptr %12, align 8, !dbg !3147
  %14 = mul i64 %13, %11, !dbg !3151
  %15 = load i64, ptr %4, align 8, !dbg !3150
  %16 = mul i64 %14, %15, !dbg !3152
  %17 = add i64 %10, %16, !dbg !3153
    #dbg_value(i64 %17, !3123, !DIExpression(), !3154)
    #dbg_value(i64 %5, !3122, !DIExpression(), !3155)
  %spec.select = call i64 @llvm.smin.i64(i64 %17, i64 %5), !dbg !3128
    #dbg_value(i64 %8, !3121, !DIExpression(), !3129)
    #dbg_value(i64 %j, !3120, !DIExpression(), !3130)
  %exitcond13.not = icmp eq i64 %8, %j, !dbg !3131
  br i1 %exitcond13.not, label %common.ret, label %for.body, !dbg !3128

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3144
  unreachable, !dbg !3144

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3147
  unreachable, !dbg !3147

lookup.throw9:                                    ; preds = %lookup.next6
  call fastcc void @runtime.lookupPanic(), !dbg !3150
  unreachable, !dbg !3150
}
