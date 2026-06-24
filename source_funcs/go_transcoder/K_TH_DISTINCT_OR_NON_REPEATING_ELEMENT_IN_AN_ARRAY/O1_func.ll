define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.loop1.preheader, label %common.ret, !dbg !3128

for.loop1.preheader:                              ; preds = %entry, %if.done5
  %1 = phi i64 [ %15, %if.done5 ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %if.done5 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3129)
    #dbg_value(i64 0, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %.not4 = icmp ult i64 %1, %arr.len
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br label %for.body2, !dbg !3128

for.body2:                                        ; preds = %for.loop1.preheader, %if.done
  %4 = phi i64 [ 0, %for.loop1.preheader ], [ %9, %if.done ]
    #dbg_value(i64 %4, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %4, !3123, !DIExpression(), !3133)
  %.not = icmp eq i64 %1, %4, !dbg !3134
  br i1 %.not, label %if.done, label %cond.true, !dbg !3128

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %4, !3123, !DIExpression(), !3136)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3137
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3137

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3139)
  br i1 %.not4, label %lookup.next10, label %lookup.throw9, !dbg !3140

lookup.next10:                                    ; preds = %lookup.next
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3137
  %6 = load i64, ptr %5, align 8, !dbg !3137
  %7 = load i64, ptr %3, align 8, !dbg !3140
  %8 = icmp eq i64 %6, %7, !dbg !3141
  br i1 %8, label %for.done, label %if.done, !dbg !3128

if.done:                                          ; preds = %lookup.next10, %for.body2
  %9 = add nuw nsw i64 %4, 1, !dbg !3142
    #dbg_value(i64 %9, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3131)
  %exitcond.not = icmp eq i64 %9, %n, !dbg !3143
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3128

for.done:                                         ; preds = %if.done, %lookup.next10
  %.lcssa.ph = phi i64 [ %n, %if.done ], [ %4, %lookup.next10 ]
    #dbg_value(i64 %.lcssa.ph, !3123, !DIExpression(), !3144)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3145)
  %10 = icmp eq i64 %.lcssa.ph, %n, !dbg !3146
  %11 = zext i1 %10 to i64, !dbg !3128
  %spec.select = add i64 %2, %11, !dbg !3128
    #dbg_value(i64 %spec.select, !3121, !DIExpression(), !3147)
    #dbg_value(i64 %k, !3120, !DIExpression(), !3148)
  %12 = icmp eq i64 %spec.select, %k, !dbg !3149
  br i1 %12, label %if.then4, label %if.done5, !dbg !3128

if.then4:                                         ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3150)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3151)
  %.not5 = icmp ult i64 %1, %arr.len, !dbg !3152
  br i1 %.not5, label %lookup.next14, label %lookup.throw13, !dbg !3152

common.ret:                                       ; preds = %if.done5, %entry, %lookup.next14
  %common.ret.op = phi i64 [ %14, %lookup.next14 ], [ -1, %entry ], [ -1, %if.done5 ]
  ret i64 %common.ret.op, !dbg !3128

lookup.next14:                                    ; preds = %if.then4
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3152
  %14 = load i64, ptr %13, align 8, !dbg !3152
  br label %common.ret, !dbg !3153

if.done5:                                         ; preds = %for.done
  %15 = add nuw nsw i64 %1, 1, !dbg !3154
    #dbg_value(i64 %15, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3155)
  %exitcond20.not = icmp eq i64 %15, %n, !dbg !3127
  br i1 %exitcond20.not, label %common.ret, label %for.loop1.preheader, !dbg !3128

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw9:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140

lookup.throw13:                                   ; preds = %if.then4
  call fastcc void @runtime.lookupPanic(), !dbg !3152
  unreachable, !dbg !3152
}
