define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3113 {
entry:
    #dbg_value(ptr %arr.data, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %arr.len, !3122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %arr.cap, !3122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3128)
    #dbg_value(i64 0, !3124, !DIExpression(), !3129)
    #dbg_value(i64 0, !3125, !DIExpression(), !3130)
    #dbg_value(i64 0, !3126, !DIExpression(), !3131)
    #dbg_value(i64 0, !3127, !DIExpression(), !3132)
  %0 = icmp sgt i64 %n, 0, !dbg !3133
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3134

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3135
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3135
  br label %for.body, !dbg !3135

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %13, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %8, %lookup.next ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %12, %lookup.next ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %10, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3127, !DIExpression(), !3136)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3137)
    #dbg_value(i64 %2, !3127, !DIExpression(), !3138)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3135

lookup.next:                                      ; preds = %for.body
  %6 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3135
  %7 = load i64, ptr %6, align 8, !dbg !3135
  %8 = add i64 %7, %3, !dbg !3139
    #dbg_value(i64 %8, !3126, !DIExpression(), !3139)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3140)
    #dbg_value(i64 %2, !3127, !DIExpression(), !3141)
  %9 = icmp sgt i64 %7, -1, !dbg !3142
  %.lobit = lshr i64 %7, 63, !dbg !3134
  %10 = add i64 %.lobit, %5, !dbg !3134
  %11 = zext i1 %9 to i64, !dbg !3134
  %12 = add i64 %4, %11, !dbg !3134
  %13 = add nuw nsw i64 %2, 1, !dbg !3143
    #dbg_value(i64 %13, !3127, !DIExpression(), !3136)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3144)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3133
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3134

for.done.loopexit:                                ; preds = %lookup.next
  %14 = sub i64 %10, %12, !dbg !3145
  %15 = sitofp i64 %14 to double, !dbg !3146
  br label %for.done, !dbg !3145

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.done.loopexit ], !dbg !3131
  %16 = phi double [ 0.000000e+00, %entry ], [ %15, %for.done.loopexit ], !dbg !3145
    #dbg_value(i64 %.lcssa, !3126, !DIExpression(), !3147)
    #dbg_value(i64 poison, !3124, !DIExpression(), !3148)
    #dbg_value(i64 poison, !3125, !DIExpression(), !3149)
    #dbg_value(double %16, !3150, !DIExpression(), !3156)
    #dbg_value(double %16, !3150, !DIExpression(), !3158)
  %17 = call double @llvm.fabs.f64(double %16), !dbg !3159
  %belowmax = fcmp ole double %17, 0x43DFFFFFFFFFFFFE, !dbg !3160
  %normal = fptosi double %17 to i64, !dbg !3160
  %18 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3160
  %19 = icmp eq i64 %18, 0, !dbg !3161
  br i1 %19, label %divbyzero.throw, label %divbyzero.next, !dbg !3161

divbyzero.next:                                   ; preds = %for.done
  %20 = icmp eq i64 %18, -1, !dbg !3161
  %21 = icmp eq i64 %.lcssa, -9223372036854775808, !dbg !3161
  %22 = and i1 %21, %20, !dbg !3161
  %23 = select i1 %22, i64 1, i64 %18, !dbg !3161
  %24 = sdiv i64 %.lcssa, %23, !dbg !3161
  ret i64 %24, !dbg !3162

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

divbyzero.throw:                                  ; preds = %for.done
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3161
  unreachable, !dbg !3161
}
