define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %1 = icmp sgt i64 %0, 0, !dbg !3127
  br i1 %1, label %for.body.preheader, label %for.done, !dbg !3128

for.body.preheader:                               ; preds = %entry
  %2 = add i64 %n, -2, !dbg !3129
  %.not9.not = icmp ugt i64 %arr.len, %2, !dbg !3129
  br label %for.body, !dbg !3129

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %3 = phi i64 [ %5, %lookup.next ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %9, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %3, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %4, !3120, !DIExpression(), !3130)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3133)
  br i1 %.not9.not, label %lookup.next, label %lookup.throw, !dbg !3129

lookup.next:                                      ; preds = %for.body
  %5 = add nuw nsw i64 %3, 1, !dbg !3134
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3129
  %7 = load i64, ptr %6, align 8, !dbg !3129
  %8 = xor i64 %4, %7, !dbg !3135
  %9 = xor i64 %8, %5, !dbg !3135
    #dbg_value(i64 %9, !3120, !DIExpression(), !3136)
    #dbg_value(i64 %5, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3126)
  %exitcond.not = icmp eq i64 %5, %0, !dbg !3127
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa6 = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !3123
    #dbg_value(i64 %.lcssa6, !3120, !DIExpression(), !3137)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3138)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3139)
  %.not = icmp ult i64 %0, %arr.len, !dbg !3140
  br i1 %.not, label %lookup.next4, label %lookup.throw3, !dbg !3140

lookup.next4:                                     ; preds = %for.done
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %0, !dbg !3140
  %11 = load i64, ptr %10, align 8, !dbg !3140
  %12 = xor i64 %11, %.lcssa6, !dbg !3141
    #dbg_value(i64 %12, !3120, !DIExpression(), !3142)
    #dbg_value(i64 %12, !3120, !DIExpression(), !3143)
  ret i64 %12, !dbg !3144

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129

lookup.throw3:                                    ; preds = %for.done
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140
}
