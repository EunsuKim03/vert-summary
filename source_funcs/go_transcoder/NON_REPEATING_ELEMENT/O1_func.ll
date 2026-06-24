define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
  %0 = icmp sgt i64 %n, 0, !dbg !3124
  br i1 %0, label %for.loop1.preheader, label %common.ret, !dbg !3125

for.loop1.preheader:                              ; preds = %entry, %if.done3
  %1 = phi i64 [ %12, %if.done3 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3120, !DIExpression(), !3126)
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3128)
  %.not2 = icmp ult i64 %1, %arr.len
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br label %for.body2, !dbg !3125

for.body2:                                        ; preds = %for.loop1.preheader, %if.done
  %3 = phi i64 [ 0, %for.loop1.preheader ], [ %8, %if.done ]
    #dbg_value(i64 %3, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3129)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3130)
  %.not = icmp eq i64 %1, %3, !dbg !3131
  br i1 %.not, label %if.done, label %cond.true, !dbg !3125

cond.true:                                        ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3133)
  br i1 %.not2, label %lookup.next, label %lookup.throw, !dbg !3134

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3136)
  %.not3 = icmp ult i64 %3, %arr.len, !dbg !3137
  br i1 %.not3, label %lookup.next8, label %lookup.throw7, !dbg !3137

lookup.next8:                                     ; preds = %lookup.next
  %4 = load i64, ptr %2, align 8, !dbg !3134
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3137
  %6 = load i64, ptr %5, align 8, !dbg !3137
  %7 = icmp eq i64 %4, %6, !dbg !3138
  br i1 %7, label %for.done, label %if.done, !dbg !3125

if.done:                                          ; preds = %lookup.next8, %for.body2
  %8 = add nuw nsw i64 %3, 1, !dbg !3139
    #dbg_value(i64 %8, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3128)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3140
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3125

for.done:                                         ; preds = %if.done, %lookup.next8
  %.lcssa.ph = phi i64 [ %n, %if.done ], [ %3, %lookup.next8 ]
    #dbg_value(i64 %.lcssa.ph, !3121, !DIExpression(), !3141)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3142)
  %9 = icmp eq i64 %.lcssa.ph, %n, !dbg !3143
  br i1 %9, label %if.then, label %if.done3, !dbg !3125

if.then:                                          ; preds = %for.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3144)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3145)
  %.not4 = icmp ult i64 %1, %arr.len, !dbg !3146
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3146

common.ret:                                       ; preds = %if.done3, %entry, %lookup.next12
  %common.ret.op = phi i64 [ %11, %lookup.next12 ], [ -1, %entry ], [ -1, %if.done3 ]
  ret i64 %common.ret.op, !dbg !3125

lookup.next12:                                    ; preds = %if.then
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3146
  %11 = load i64, ptr %10, align 8, !dbg !3146
  br label %common.ret, !dbg !3147

if.done3:                                         ; preds = %for.done
  %12 = add nuw nsw i64 %1, 1, !dbg !3148
    #dbg_value(i64 %12, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3149)
  %exitcond18.not = icmp eq i64 %12, %n, !dbg !3124
  br i1 %exitcond18.not, label %common.ret, label %for.loop1.preheader, !dbg !3125

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw7:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw11:                                   ; preds = %if.then
  call fastcc void @runtime.lookupPanic(), !dbg !3146
  unreachable, !dbg !3146
}
