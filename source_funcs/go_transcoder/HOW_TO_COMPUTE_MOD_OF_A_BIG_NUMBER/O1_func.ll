define i64 @f_gold(ptr nocapture readonly %num.data, i64 %num.len, i64 %num.cap, i64 %a) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %num.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %num.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %num.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %a, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
  %0 = icmp sgt i64 %num.len, 0, !dbg !3126
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3127

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp eq i64 %a, 0
  %2 = icmp eq i64 %a, -1
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %15, %divbyzero.next ]
  %4 = phi i64 [ 0, %for.body.lr.ph ], [ %14, %divbyzero.next ]
    #dbg_value(i64 %3, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %4, !3120, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3131)
    #dbg_value(i64 %a, !3119, !DIExpression(), !3132)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !3133

divbyzero.next:                                   ; preds = %for.body
  %5 = mul i64 %4, 10, !dbg !3134
  %6 = getelementptr inbounds nuw i8, ptr %num.data, i64 %3, !dbg !3135
  %7 = load i8, ptr %6, align 1, !dbg !3135
  %8 = zext i8 %7 to i64, !dbg !3136
  %9 = add i64 %5, -48, !dbg !3137
  %10 = add i64 %9, %8, !dbg !3138
  %11 = icmp eq i64 %10, -9223372036854775808, !dbg !3133
  %12 = and i1 %2, %11, !dbg !3133
  %13 = select i1 %12, i64 1, i64 %a, !dbg !3133
  %14 = srem i64 %10, %13, !dbg !3133
    #dbg_value(i64 %14, !3120, !DIExpression(), !3139)
  %15 = add nuw nsw i64 %3, 1, !dbg !3140
    #dbg_value(i64 %15, !3121, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
  %exitcond.not = icmp eq i64 %15, %num.len, !dbg !3126
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3127

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %14, %divbyzero.next ], !dbg !3123
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3141)
  ret i64 %.lcssa, !dbg !3142

divbyzero.throw:                                  ; preds = %for.body
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3133
  unreachable, !dbg !3133
}
