define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3121)
    #dbg_value(i64 0, !3120, !DIExpression(), !3122)
  %0 = add i64 %n, -2
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
  %.not15 = icmp slt i64 %0, -1, !dbg !3125
  br i1 %.not15, label %common.ret, label %for.body.preheader, !dbg !3126

for.body.preheader:                               ; preds = %entry
  %1 = sdiv i64 %0, 2
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.preheader, %if.done2
  %2 = phi i64 [ %15, %if.done2 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3120, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3128)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3129)
  %3 = shl nuw i64 %2, 1, !dbg !3130
  %4 = or disjoint i64 %3, 1, !dbg !3131
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3127
  br i1 %.not3, label %lookup.next, label %lookup.throw, !dbg !3127

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %2, %arr.len, !dbg !3134
  br i1 %exitcond.not, label %lookup.throw5, label %lookup.next6, !dbg !3134

lookup.next6:                                     ; preds = %lookup.next
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3127
  %6 = load i64, ptr %5, align 8, !dbg !3127
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3134
  %8 = load i64, ptr %7, align 8, !dbg !3134
  %9 = icmp sgt i64 %6, %8, !dbg !3135
  br i1 %9, label %common.ret, label %if.done, !dbg !3126

common.ret:                                       ; preds = %lookup.next6, %lookup.next14, %if.done2, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ false, %lookup.next6 ], [ false, %lookup.next14 ], [ true, %if.done2 ], !dbg !3125
  ret i1 %.not.lcssa, !dbg !3126

if.done:                                          ; preds = %lookup.next6
    #dbg_value(i64 %2, !3120, !DIExpression(), !3136)
  %10 = add nuw i64 %3, 2, !dbg !3137
    #dbg_value(i64 %n, !3119, !DIExpression(), !3138)
  %11 = icmp slt i64 %10, %n, !dbg !3139
  br i1 %11, label %cond.true, label %if.done2, !dbg !3126

cond.true:                                        ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3141)
  %.not5 = icmp ult i64 %10, %arr.len, !dbg !3142
  br i1 %.not5, label %lookup.next14, label %lookup.throw9, !dbg !3142

lookup.next14:                                    ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3143)
    #dbg_value(i64 %2, !3120, !DIExpression(), !3144)
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3142
  %13 = load i64, ptr %12, align 8, !dbg !3142
  %14 = icmp sgt i64 %13, %8, !dbg !3145
  br i1 %14, label %common.ret, label %if.done2, !dbg !3126

if.done2:                                         ; preds = %lookup.next14, %if.done
  %15 = add nuw nsw i64 %2, 1, !dbg !3146
    #dbg_value(i64 %15, !3120, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
  %exitcond19.not = icmp eq i64 %2, %1, !dbg !3125
  br i1 %exitcond19.not, label %common.ret, label %for.body, !dbg !3126

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3127
  unreachable, !dbg !3127

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw9:                                    ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142
}
